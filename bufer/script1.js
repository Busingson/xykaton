// тестовый скрипт
document.getElementById('eventForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const date = document.getElementById('date').value;
    const time = document.getElementById('time').value;
    const location = document.getElementById('location').value;
    const responsible = document.getElementById('responsible').value;

    fetch('http://localhost:3000/send-event', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ date, time, location, responsible })
    })
    .then(response => {
        if (response.ok) {
            return response.text();
        }
        throw new Error('Ошибка при отправке данных');
    })
    .then(data => {
        document.getElementById('response').innerText = data;
        document.getElementById('eventForm').reset(); // Сброс формы
    })
    .catch(error => {
        document.getElementById('response').innerText = error.message;
    });
});
