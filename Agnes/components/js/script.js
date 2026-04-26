window.onload = function () {
  const cursorItem = document.querySelector("#Cursor a");
  const addContentItem = document.querySelector("#AddContent a");
  const fontsItem = document.querySelector("#Fonts a");
  const squareItem = document.querySelector("#Square a");
  const codeItem = document.querySelector("#Code a");
  const folderItem = document.querySelector("#Folder a");
  const layersItem = document.querySelector("#Layers a");
  const content = document.getElementById("content");
  const remove = document.getElementById("deletar");
  const canvas = document.getElementById("canvas");
  const generatedHTML = localStorage.getItem("HTML");
  const low = document.getElementById("low-code");
  const abrir = document.getElementById("abrir");
  const meuSite = document.getElementById("meuSite");
  const sidebar = document.getElementById("sidebar");
  const contextMenu2 = document.getElementById("contextMenu2");
  const codeEditor = document.getElementById("codeEditor");
  const saveCodeBtn = document.getElementById("saveCodeBtn");
  const codigo = document.getElementById("codeEditor").value;

  //---------- parte hibrida low-code e forma tradicional -----------
  low.addEventListener("click", () => {
    if (sidebar) {
      sidebar.style.display = "none"; // Define a propriedade display como none
    }
  });

  abrir.addEventListener("click", (event) => {
    event.preventDefault(); // Impede o comportamento padrão do link
    if (sidebar) {
      sidebar.style.display = "block"; // Torna a barra de navegação visível
    }
  });
  if (generatedHTML) {
    // Inserir o conteúdo HTML na div com id 'canvas'
    canvas.innerHTML = generatedHTML;
  } else {
    console.error("Nenhum conteúdo foi encontrado no localStorage.");
  }

  //visualizar
  document.getElementById("Visualizar").addEventListener("click", () => {
    window.open("Meu site.html", "_blank");
    document.getElementById("meuSite").innerHTML = generatedHTML;
  });

  document.getElementById("code").addEventListener("click", function (event) {
    event.preventDefault();
    
    // Fechar o menu de contexto anterior, caso esteja visível
    contextMenu2.style.display = "none";

    // Se necessário, você pode definir o código do elemento para edição (se desejado)
    localStorage.setItem("HTML", generatedHTML);
    codeEditor.value = canvas.innerHTML;

    contextMenu2.style.top = "10px"; // Distância do topo
    contextMenu2.style.right = "10px"; // Distância do canto direito
    contextMenu2.style.left = "auto"; // Garante que `left` não interfira
    contextMenu2.style.position = "fixed"; // Posicionamento fixo
    contextMenu2.style.display = "block";

    // Configura o estilo de barra de rolagem
    contextMenu2.style.overflowY = "auto"; // Habilita barra de rolagem vertical
    contextMenu2.style.maxHeight = "7000px"; // Limita a altura máxima
    contextMenu2.style.width = "700px"; // Largura fixa (ou ajustável conforme necessário)
  });

  // Fechar o menu de contexto quando clicar fora

  // Salvar alterações feitas no código
  saveCodeBtn.addEventListener("click", () => {
    // Pega o valor atual da textarea
    canvas.innerHTML = codeEditor.value;
    const generatedHTML = codeEditor.value;
    // Armazena o valor no localStorage
    localStorage.setItem("HTML", generatedHTML);

    // Caso você queira ver o conteúdo no console
    console.log("Código salvo:", generatedHTML);
    contextMenu2.style.display = "none"; 
  });

  //-----------------------------criar elementos--------------------------
  addContentItem.addEventListener("click", () => createElement("card"));
  fontsItem.addEventListener("click", () => createElement("text"));
  squareItem.addEventListener("click", () => createElement("button"));
  remove.addEventListener("click", () => deletarElemento);

  function gerarId(elemento) {
    const tipoElemento = elemento.tagName;

    const numeroAleatorio = Math.floor(Math.random() * 90) + 1;

    const idGerado = `${tipoElemento}_${numeroAleatorio}`;

    return idGerado;
  }

  function createElement(type) {
    const element = document.createElement(type);
    element.classList.add("movable");
    element.style.position = "fixed";
    element.style.left = "320px";
    element.style.backgroundColor = "#AFDA9F";
    element.style.borderRadius = "5px";
    element.style.width = "100px";
    element.style.height = "100px";
    element.style.top = "240px";
    element.style.cursor = "pointer";


    // Gerar e adicionar um ID único ao elemento
    const idNovo = gerarId(element);
    element.id = idNovo;

    if (type === "text") {
      element.textContent = "Texto";
      element.classList.add("text");
    } else if (type === "image") {
      element.style.backgroundImage = 'url("imagempadrao.js")';
      element.classList.add("image");
    } else if (type === "div") {
      element.classList.add("div");
    } else if (type === "button") {
      element.classList.add("button");
    } else if (type === "card") {
      element.classList.add("card");
    }

    if (canvas) {
      canvas.appendChild(element);
    } else {
      console.error('Div com id "canvas" não encontrada.');
    }
    codeEditor.value = canvas.innerHTML ;
    generatedHTML = canvas.innerHTML ;
  }

  // Função para deletar o elemento que ativou o evento
  function deletarElemento(event) {
    // O `event.target` é o elemento que disparou o evento
    const elemento = event.target;

    // Remove o elemento do DOM
    elemento.remove();
  }

  //---------------movimentação dos elementos-----------------------------
  let startX, startY, initialX, initialY, activeElement;

  const fecharContextMenu = () => {
    contextMenu.style.display = "none";
  };
  canvas.addEventListener("mousedown", (e) => {
    fecharContextMenu();

    // Verificar se o clique não foi no próprio canvas
    if (e.target === canvas) return;

    e.preventDefault();
    activeElement = e.target;
    console.log(activeElement);

    startX = e.clientX;
    startY = e.clientY;
    initialX = activeElement.offsetLeft;
    initialY = activeElement.offsetTop;

    canvas.addEventListener("mousemove", mouseMove);
    canvas.addEventListener("mouseup", mouseUp);
  });

  function mouseMove(e) {
    if (activeElement) {
      const newX = e.clientX - startX;
      const newY = e.clientY - startY;

      requestAnimationFrame(() => {
        activeElement.style.left = initialX + newX + "px";
        activeElement.style.top = initialY + newY + "px";
      });
    }
  }

  function mouseUp() {
    localStorage.setItem("HTML", document.getElementById("canvas").innerHTML);
    document.removeEventListener("mousemove", mouseMove);
    document.removeEventListener("mouseup", mouseUp);
    activeElement = null;
    codeEditor.value = canvas.innerHTML ;
    generatedHTML = canvas.innerHTML ;
  
  }

  //-------------------------context menu--------------------------------

  function rgbToHex(rgb) {
    // Converte o valor RGB para hexadecimal
    let result = rgb.match(/\d+/g);
    if (result) {
        return "#" + result
            .map(x => {
                let hex = parseInt(x).toString(16);
                return hex.length == 1 ? "0" + hex : hex;
            })
            .join("");
    }
    return rgb;
}

function preencherFormularioComValores(elementoParaAlterar) {
    // Capturando os estilos do elemento
    const styles = window.getComputedStyle(elementoParaAlterar);
    
    // Identificando corretamente o background
    let background = styles.backgroundColor; // Para cor sólida
    if (styles.backgroundImage !== 'none') {
        background = styles.backgroundImage; // Para imagem de fundo
    } else if (styles.background === 'transparent') {
        background = 'transparent'; // Para fundo transparente
    }

    // Se a cor de fundo for RGB, converte para hexadecimal
    if (background.startsWith('rgb')) {
        background = rgbToHex(background);
    }

    // Preenchendo os campos com os valores atuais
    document.getElementById('bgColor').value = background; // Preenche o campo de cor de fundo
    document.getElementById('width').value = parseInt(styles.width, 10); // largura
    document.getElementById('height').value = parseInt(styles.height, 10); // altura
    document.getElementById('text').value = elementoParaAlterar.textContent || ''; // texto
    document.getElementById('borderSize').value = parseInt(styles.borderWidth, 10); // tamanho da borda
    document.getElementById('borderColor').value = styles.borderColor || "#000000"; // cor da borda
    document.getElementById('margin').value = parseInt(styles.margin, 10); // margem
    document.getElementById('fontFamily').value = styles.fontFamily || 'Arial'; // fonte
    document.getElementById('fontSize').value = parseInt(styles.fontSize, 10); // tamanho da fonte
    document.getElementById('fontColor').value = styles.color || "#000000"; // cor da fonte
    document.getElementById('textAlign').value = styles.textAlign || 'left'; // alinhamento de texto
    document.getElementById('shadowColor').value = styles.textShadow ? styles.textShadow.split(' ')[3] : "#000000"; // sombra cor
    document.getElementById('shadowX').value = parseInt(styles.textShadow ? styles.textShadow.split(' ')[0] : 0, 10); // sombra X
    document.getElementById('shadowY').value = parseInt(styles.textShadow ? styles.textShadow.split(' ')[1] : 0, 10); // sombra Y
    document.getElementById('shadowBlur').value = parseInt(styles.textShadow ? styles.textShadow.split(' ')[2] : 0, 10); // sombra desfoque
    document.getElementById('borderRadius').value = parseInt(styles.borderRadius, 10); // borda arredondada
    document.getElementById('opacity').value = styles.opacity ? parseFloat(styles.opacity) : 1; // opacidade
    document.getElementById('zIndex').value = styles.zIndex !== 'auto' ? styles.zIndex : ''; // z-index
    document.getElementById('alignItems').value = styles.alignItems || 'flex-start'; // alinhamento de itens (flex)
    document.getElementById('justifyContent').value = styles.justifyContent || 'flex-start'; // justificação (flex)
};


  // Gerenciar elemento clicado
  const contextMenu = document.getElementById("contextMenu");

  window.addEventListener("contextmenu", function (event) {
    event.preventDefault();
    const elementoClicado = event.target;
    if (elementoClicado === contextMenu) {
      event.preventDefault();
      contextMenu.style.display = "none";
      return; // Encerra a execução
    }
    console.log(elementoClicado);
    if (elementoClicado === canvas) return;
    console.log(elementoClicado);

    if (elementoClicado.id) {
      const idDoElemento = elementoClicado.id;
      console.log(idDoElemento);

      const mostrarContextMenu = (event) => {
        event.preventDefault();
        preencherFormularioComValores(elementoClicado);
        contextMenu.scrollTop = 0;
        // Define a posição fixa no canto direito da tela
        contextMenu.style.top = "10px"; // Distância do topo
        contextMenu.style.right = "10px"; // Distância do canto direito
        contextMenu.style.left = "auto"; // Garante que `left` não interfira
        contextMenu.style.position = "fixed"; // Posicionamento fixo
        contextMenu.style.display = "block";

        // Configura o estilo de barra de rolagem
        contextMenu.style.overflowY = "auto"; // Habilita barra de rolagem vertical
        contextMenu.style.maxHeight = "740px"; // Limita a altura máxima
        contextMenu.style.width = "300px"; // Largura fixa (ou ajustável conforme necessário)

        // Armazene o ID do elemento clicado no menu de contexto
        contextMenu.dataset.targetId = idDoElemento;
      };

      // Adicionar o evento de contexto na primeira vez
      elementoClicado.addEventListener("contextmenu", mostrarContextMenu, {
        once: true,
      });

      const salvar = document.getElementById("salvar");

      // Adicionar evento de clique para fechar o menu de contexto
      contextMenu.addEventListener("click", (event) => {
        if (event.target === salvar) {
          event.preventDefault();
          console.log(
            `Elemento com ID ${contextMenu.dataset.targetId} foi salvo.`

          );

          // Recuperando o elemento clicado através do ID armazenado no menu
          const elementoParaAlterar = document.getElementById(contextMenu.dataset.targetId);
          codeEditor.value = canvas.innerHTML ;

          if (elementoParaAlterar) {
            event.preventDefault();
            // Capturando os valores do formulário
            const bgColor = document.getElementById("bgColor").value;
            const width = document.getElementById("width").value;
            const height = document.getElementById("height").value;
            const text = document.getElementById("text").value;
            const borderSize = document.getElementById("borderSize").value;
            const borderColor = document.getElementById("borderColor").value;
            const margin = document.getElementById("margin").value;
            const fontFamily = document.getElementById("fontFamily").value;
            const fontSize = document.getElementById("fontSize").value;
            const fontColor = document.getElementById("fontColor").value;
            const textAlign = document.getElementById("textAlign").value;
            const shadowColor = document.getElementById("shadowColor").value;
            const shadowX = document.getElementById("shadowX").value;
            const shadowY = document.getElementById("shadowY").value;
            const shadowBlur = document.getElementById("shadowBlur").value;
            const borderRadius = document.getElementById("borderRadius").value;
            const opacity = document.getElementById("opacity").value;
            const zIndex = document.getElementById("zIndex").value;
            const alignItems = document.getElementById("alignItems").value;
            const justifyContent = document.getElementById("justifyContent").value;

            // Aplicando as propriedades ao elemento clicado
            if (bgColor) {
              elementoParaAlterar.style.backgroundColor = bgColor;
            }
            if (width) {
              elementoParaAlterar.style.width = width + "px";
            }
            if (height) {
              elementoParaAlterar.style.height = height + "px";
            }
            if (text) {
              elementoParaAlterar.textContent = text;
            }
            if (borderSize) {
              elementoParaAlterar.style.border = `${borderSize}px solid ${
                borderColor || "black"
              }`;
            }
            if (margin) {
              elementoParaAlterar.style.margin = margin + "px";
            }
            if (fontFamily) {
              elementoParaAlterar.style.fontFamily = fontFamily;
            }
            if (fontSize) {
              elementoParaAlterar.style.fontSize = fontSize + "px";
            }
            if (fontColor) {
              elementoParaAlterar.style.color = fontColor;
            }
            if (textAlign) {
              elementoParaAlterar.style.textAlign = textAlign;
            }
            if (shadowColor && shadowX && shadowY && shadowBlur) {
              elementoParaAlterar.style.textShadow = `${shadowX}px ${shadowY}px ${shadowBlur}px ${shadowColor}`;
            }
            if (borderRadius) {
              elementoParaAlterar.style.borderRadius = borderRadius + "px";
            }
            if (opacity) {
              elementoParaAlterar.style.opacity = opacity;
            }
            if (zIndex) {
              elementoParaAlterar.style.zIndex = zIndex;
            }
            if (alignItems) {
              elementoParaAlterar.style.alignItems = alignItems;
            }
            if (justifyContent) {
              elementoParaAlterar.style.justifyContent = justifyContent;
            }
            localStorage.setItem("HTML", document.getElementById("canvas").innerHTML);
            codeEditor.value = canvas.innerHTML ;
            generatedHTML = canvas.innerHTML ;
            console.log('o site foi salvo')
            // Fechar o menu de contexto após salvar
            contextMenu.style.display = "none";
            // Reativar o evento de contexto no elemento
            elementoParaAlterar.addEventListener(
              "contextmenu",
              mostrarContextMenu,
              { once: true }
            );
          }
        }

        if (event.target === deletar) {
          event.preventDefault();
          console.log(
            `Elemento com ID ${contextMenu.dataset.targetId} foi deletado.`
          );
          const elementoParaDeletar = document.getElementById(
            contextMenu.dataset.targetId
          );
          if (elementoParaDeletar) {
            event.preventDefault();
            elementoParaDeletar.remove(); // Remove o elemento
            localStorage.setItem("HTML", document.getElementById("canvas").innerHTML);
            codeEditor.value = canvas.innerHTML ;
            generatedHTML = canvas.innerHTML ;
            contextMenu.style.display = "none"; // Fecha o menu de contexto
          }
        }
      });

      // Prevenir que o menu de contexto seja exibido ao clicar no submenu
      contextMenu.addEventListener("contextmenu", (event) => {
        event.preventDefault();
      });
    } else {
      console.log("Elemento clicado não tem ID");
    }
  });
};
