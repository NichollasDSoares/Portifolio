document.getElementById("login-btn").addEventListener("click", async function (e) {
    e.preventDefault(); // Previne o recarregamento da página

    const email = document.getElementById("email").value;
    const senha = document.getElementById("password").value;

    if (!email || !senha) {
        alert("Por favor, preencha todos os campos.");
        return;
    }

    try {
        // Enviar dados para o servidor
        const response = await fetch("http://LocalHost:3006/login", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({ email_usuario: email, senha_usuario: senha }), // Mudei username para email_usuario
        });

        const data = await response.json();

        if (response.ok) {
            alert("Login bem-sucedido!");
            window.location.href = "mainpage.html"; // Redireciona para a página principal
        } else {
            alert(data || "Erro no login. Verifique suas credenciais.");
        }
    } catch (error) {
        console.error("Erro ao fazer login:", error);
        alert("Ocorreu um erro. Tente novamente mais tarde.");
    }
});
