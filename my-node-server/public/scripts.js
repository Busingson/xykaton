document.getElementById("submitButton").addEventListener("click", showNotification);

function showNotification() {
    const notification = document.getElementById("notification");
    /*
        сюда можно вставить блок проверки условия срабатывания

        и блок "отправки" самой заявки на СУБД и почту
    */

    notification.innerHTML = "Заявка отправлена!";
    notification.style.display = "block";

    setTimeout(() => {
        notification.style.display = "none";
    }, 3000); // Уведомление будет показано 3 секунды
}