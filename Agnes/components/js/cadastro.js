//----------------------------conexão banco-----------------------------
function createUser() {
    const nome_usuario = document.getElementById('nome_usuario').value;
    const email_usuario = document.getElementById('email_usuario').value;
    const senha_usuario = document.getElementById('senha_usuario').value;
    const confirm_senha_usuario = document.getElementById('confirm_senha_usuario').value;
    const foto_usuario = 'default.jpg'; // Exemplo de valor padrão para foto_usuario

    if (senha_usuario !== confirm_senha_usuario) {
        alert('As senhas não coincidem!');
        return;
    }

    // Enviando os dados ao backend
    fetch('http://LocalHost:3006/register', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ nome_usuario, email_usuario, senha_usuario, foto_usuario }),
    })
        .then(response => response.text())
        .then(data => {
            alert(data);
            clearForm();
        })
        .catch(err => console.error('Erro:', err));
}

// Função para limpar o formulário
function clearForm() {
    document.getElementById('nome_usuario').value = '';
    document.getElementById('email_usuario').value = '';
    document.getElementById('senha_usuario').value = '';
    document.getElementById('confirm_senha_usuario').value = '';
}



/*
function createUser() {
    const nome_usuario = document.getElementById('nome_usuario').value;
    const email_usuario = document.getElementById('email_usuario').value;
    const senha_usuario = document.getElementById('senha_usuario').value;
    const confirm_senha_usuario = document.getElementById('confirm_senha_usuario').value;
    const foto_usuario = 'default.jpg'; // Exemplo de valor padrão para foto_usuario
  
    if (senha_usuario !== confirm_senha_usuario) {
        alert('As senhas não coincidem!');
        return;
    }
  
    const user = {
        id: Date.now(),
        nome_usuario,
        email_usuario,
        senha_usuario,
        foto_usuario
    };
  
    let users = JSON.parse(localStorage.getItem('users')) || [];
    users.push(user);
    localStorage.setItem('users', JSON.stringify(users));
  
    displayUsers();
    clearForm();
  }
  
  // Função para exibir os usuários
  function displayUsers() {
    const users = JSON.parse(localStorage.getItem('users')) || [];
    const userList = document.getElementById('userList');
    userList.innerHTML = '';
  
    users.forEach(user => {
        const userDiv = document.createElement('div');
        userDiv.innerHTML = `
            <p>Nome: ${user.nome_usuario}</p>
            <p>Email: ${user.email_usuario}</p>
            <button onclick="deleteUser(${user.id})">Deletar</button>
            <button onclick="editUser(${user.id})">Editar</button>
        `;
        userList.appendChild(userDiv);
    });
  }
  
  // Função para deletar um usuário
  function deleteUser(id) {
    let users = JSON.parse(localStorage.getItem('users')) || [];
    users = users.filter(user => user.id !== id);
    localStorage.setItem('users', JSON.stringify(users));
  
    displayUsers();
  }
  
  // Função para editar um usuário
  function editUser(id) {
    const users = JSON.parse(localStorage.getItem('users')) || [];
    const user = users.find(user => user.id === id);
  
    document.getElementById('nome_usuario').value = user.nome_usuario;
    document.getElementById('email_usuario').value = user.email_usuario;
    document.getElementById('senha_usuario').value = user.senha_usuario;
    document.getElementById('confirm_senha_usuario').value = user.senha_usuario;
  
    deleteUser(id);
  }
  
  // Função para limpar o formulário
  function clearForm() {
    document.getElementById('nome_usuario').value = '';
    document.getElementById('email_usuario').value = '';
    document.getElementById('senha_usuario').value = '';
    document.getElementById('confirm_senha_usuario').value = '';
  }
  
  // Inicializa a lista de usuários ao carregar a página
  document.addEventListener('DOMContentLoaded', displayUsers);
  */