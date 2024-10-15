document.getElementById('main-form').addEventListener("submit", (event) => 
{   
    event.preventDefault(); //отключает стандартно еповедение страницы(Оно не презагружается после нажания на "Готово")

    let el = document.getElementById('main-form');// ID формы с которой работаем

    //Присваиваем переменным значение
    let name = el.name.value;
    let pass = el.pass.value;
    let repass = el.repass.value;
    let state = el.state.value;

    let fail = ""; //Строка куда записываются ошибки

    //Проверки
    if(name == "" || pass == "" || state == ""){fail = "Заполните все поля"}
    else if(name.length <= 1 || name.length > 50){fail = "Введите корректное имя"}
    else if(pass != repass){fail = "Пароли должны совпадать"} 
    else if(pass.split("&").length > 1){fail = "Некорректный пароль"}

    //Проверяем есть ли ошибки?
    if(fail != "")
    {   
        document.getElementById('error').innerHTML = fail;
    }
    else
    {
        alert("Все данные корректно введены");
        window.location = "index.html"
    }
} );
