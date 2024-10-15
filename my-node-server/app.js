const client = require('./db'); // Импортируем подключение

const queryDatabase = async () => {
    try {
        const res = await client.query('SELECT * FROM BOOKING'); // замените `your_table` на название вашей таблицы
        console.log(res.rows); // Выводим результат в консоль
    } catch (err) {
        console.error(err.stack);
    } finally {
        await client.end(); // Закрываем соединение
    }
};