const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
const port = 3006;

// Configuração do banco de dados
const db = mysql.createConnection({
    host: 'LocalHost', // Ajuste conforme sua configuração
    user: 'root', // Seu usuário do MySQL
    password: '', // Sua senha do MySQL
    database: 'agnes', // Nome do banco de dados
});

// Conectando ao banco
db.connect(err => {
    if (err) {
        console.error('Erro ao conectar ao banco:', err);
    } else {
        console.log('Conectado ao banco de dados.');
    }
});

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Rota para registrar usuário
app.post('/register', (req, res) => {
    const { nome_usuario, email_usuario, senha_usuario, foto_usuario } = req.body;

    const sql = `INSERT INTO usuario (nome_usuario, email_usuario, senha_usuario, foto_usuario) VALUES (?, ?, ?, ?)`;

    db.query(sql, [nome_usuario, email_usuario, senha_usuario, foto_usuario], (err, result) => {
        if (err) {
            res.status(500).send('Erro ao cadastrar usuário.');
        } else {
            res.status(200).send('Usuário cadastrado com sucesso.');
        }
    });
});

// Rota para login de usuário
app.post('/login', (req, res) => {
    const { email_usuario, senha_usuario } = req.body;
    console.log('Login Attempt:', email_usuario);  // Verifique se a requisição está chegando

    const sql = `SELECT * FROM usuario WHERE email_usuario = ?`;
    db.query(sql, [email_usuario], (err, result) => {
        if (err) {
            console.error('Erro no banco de dados:', err);
            return res.status(500).send('Erro ao consultar o banco de dados.');
        }

        if (result.length === 0) {
            console.log('Usuário não encontrado');
            return res.status(401).send('Usuário não encontrado.');
        }

        const user = result[0];

        // Verifica se a senha fornecida é igual à armazenada no banco de dados
        if (senha_usuario !== user.senha_usuario) {
            console.log('Senha incorreta');
            return res.status(401).send('Senha incorreta.');
        }

        // Login bem-sucedido
        console.log('Login bem-sucedido!');
        res.status(200).send('Login bem-sucedido!');
    });
});

// Iniciando o servidor
app.listen(port, () => {
    console.log(`Servidor rodando na porta ${port}`);
});
