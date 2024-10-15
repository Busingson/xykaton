const { Client } = require('pg');

const client = new Client({
    user: 'postgres', // Имя пользователя
    host: 'localhost',      // Хост базы данных
    database: 'mydatabase', // Имя базы данных
    password: '123456', // Пароль
    port: 5432,             // Порт (по умолчанию 5432 для PostgreSQL)
});

client.connect()
    .then(() => console.log('Connected to PostgreSQL'))
    .catch(err => console.error('Connection error', err.stack));