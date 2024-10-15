const express = require('express');

const app = express();
const PORT = process.env.PORT || 8122;

// Middleware для парсинга JSON
app.use(express.json());

// Папка для статических файлов
app.use(express.static('public'));

// Создание простого маршрута
app.get('/', (req, res) => {
   //res.send('Привет, мир! Это мой сервер на Node.js.');
   res.sendFile(__dirname + '/public/index.html')
});

// Пример маршрута для отправки JSON
app.get('/api/data', (req, res) => {
   res.json({ message: 'Это ваш ответ с сервера!', timestamp: new Date() });
});



// Пример маршрута для API
app.get('/api/data', (req, res) => {
   res.json({ message: 'Это ваш ответ с сервера!', timestamp: new Date() });
});

// Запуск сервера
app.listen(PORT, () => {
  console.log(`Сервер запущен на http://localhost:${PORT}`);
});

//const nodemailer = require('nodemailer');
// const bodyParser = require('body-parser');
//const cors = require('cors');


//app.use(cors());
//app.use(bodyParser.json());

// // Настройка Nodemailer
// const transporter = nodemailer.createTransport({
//     service: 'Gmail', // Или другой провайдер
//     auth: {
//         user: 'k.aleks622@gmail.com', // Ваш email
//         pass: '12345678'    // Ваш пароль или App password
//     }
// });

// // Эндпоинт для отправки данных о событии
// app.post('/send-event', async (req, res) => {
//     const { date, time, location, responsible } = req.body;

//     const mailOptions = {
//         from: 'k.aleks622@gmail.com',
//         to: 'zero.sans@yandex.ru', // Адрес, на который будет отправлено письмо
//         subject: 'Информация о событии',
//         text: `Дата: ${date}\nВремя: ${time}\nМесто проведения: ${location}\nОтветственное лицо: ${responsible}`
//     };

//     try {
//         await transporter.sendMail(mailOptions);
//         res.status(200).send('Email успешно отправлен!');
//     } catch (error) {
//         console.error(error);
//         res.status(500).send('Ошибка при отправке email');
//     }
// });


/*
exports.opendb = function(settings, callback){    
    let mongo = require('mongodb'), // требуется замена на нашу базу данных
      Server = mongo.Server,
      Db = mongo.Db;
    
    let server = new Server(settings.host, settings.port, {auto_reconnect: settings.auto_reconnect});
    let db = new Db(settings.db, server);
    
    db.open(function(err, db) {
      if(!err) {
        db.authenticate(settings.username, settings.password, function(){callback(false, db);});
      } else callback(true, db);
    });    
};

exports.criptpassword = function(string){
    let crypto = require('crypto');
    return crypto.createHash('md5').update(string+global.saldo).digest("hex");
};
*/