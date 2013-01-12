<!doctype html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; UTF-8"/>
    <meta name="description" content=" "/>

    <title>ПриватБанк.Анкета</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://app.divshot.com/css/divshot-util.css">
    <link rel="stylesheet" href="https://app.divshot.com/css/bootstrap.css">
    <link rel="stylesheet" href="https://app.divshot.com/css/bootstrap-responsive.css">
    <link rel="stylesheet" href="./resources/stylesheet/style.css">
    <script src="https://app.divshot.com/js/jquery.min.js"></script>
    <script src="http://documentcloud.github.com/underscore/underscore.js"></script>
    <script src="http://backbonejs.org/backbone.js"></script>
    <script type="text/javascript" src="http://jzaefferer.github.com/jquery-validation/jquery.validate.js"></script>
    <script src="./resources/js/view.js"></script>
    <script src="./resources/js/service.js"></script>
    <script src="./resources/js/model.js"></script>
    <script src="./resources/js/controller.js"></script>
    <script src="./resources/js/application.js"></script>
</head>

<body>
<div class="navbar">
    <div class="navbar-inner">
        <a class="brand" href="#">ПриватБанк.Анкета</a>

        <div class="navbar-content">
            <ul class="nav">
                <li class="active">
                    <a class="header-menu" href="#">Анкета</a>
                </li>
                <li>
                    <a class="header-menu" href="#">Справка</a>
                </li>
                <li>
                    <a class="header-menu" href="http://privatbank.ua/ua/">На главную</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="alert alert-error message" id="error-box">
        <a class="close" data-dismiss="alert">×</a>
      <span>Поля анкеты заполнены неверно!
        <br> Пожалуйста, повторите ввод.
        <br>
      </span>
    </div>
    <div class="alert alert-success message" id="success-box">
        <a class="close" data-dismiss="alert">×</a>
        <span>
          <b>Ваши данные успешно отправлены!
              <br>
          </b>В ближайшее время наши сотрудники с Вами свяжутся
          <br>
        </span>
    </div>
</div>
<div class="container" id="body">
<div class="container slide-panel" id="slide-panel1">
    <p class="text-info lead">Данные о кредите</p>

    <form class="form-vertical" id="form1">
        <fieldset form="form1">
            <div class="row">
                <div class="span4">
                    <div class="control-group">
                        <label class="control-label">Сумма кредита? UAH</label>

                        <div class="controls">
                            <label>
                                <input type="number" min="0" class="input-large" name="input" id="i1">
                            </label>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Ставка (% годовых)</label>

                        <div class="controls">
                            <label>
                                <input type="number" min="0" class="input-large" name="input">
                            </label>
                        </div>
                    </div>
                    <div class="container pull-left">
                        <div class="control-group pull-left">
                            <label class="control-label">Способ возврата кредита</label>

                            <div class="controls">
                                <label>
                                    <input type="number" placeholder="сумма" class="input-large" min="0" name="input">
                                </label>
                            </div>
                        </div>
                        <div class="btn-group pull-left"></div>
                        <div class="control-group">
                            <label class="control-label">Способ возврата</label>

                            <div class="controls">
                                <label>
                                    <select>
                                        <option>Проценты</option>
                                        <option>Равными частями</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="container">
                    <div class="control-group">
                        <label class="control-label">Целевое использование кредита</label>

                        <div class="controls">
                            <label>
                                <textarea></textarea>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
    </form>
</div>
<div id="slide-panel2" class="container slide-panel">
    <p class="text-info lead">О Вас</p>

    <form class="form-vertical" id="form2">

        <div class="container">
            <div class="control-group">
                <label class="control-label">ФИО</label>

                <div class="controls">
                    <label>
                        <input type="text" class="input-large">
                    </label>
                </div>

            </div>
            <div class="control-group pull-left">

                <label class="control-label">Пасспорт</label>

                <div class="controls">
                    <label>
                        <input type="text" class="input-large required">
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Кем выдан, дата</label>

                <div class="controls">
                    <label>
                        <input type="text" class="input-large">
                    </label>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="control-group pull-left">
                <label class="control-label">Дата рождения</label>

                <div class="controls">
                    <label>
                        <input type="date" class="input-large">
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Место рождения</label>

                <div class="controls">
                    <label>
                        <input type="text" class="input-large">
                    </label>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="control-group">
                <label class="control-label">Адрес регистрации</label>

                <div class="controls">
                    <label>
                        <input type="text" class="input-large">
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Адрес фактического места жительства</label>

                <div class="controls">
                    <label>
                        <input type="text" class="input-large">
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Семейное положение</label>

                <div class="controls">
                    <label>
                        <select>
                            <option>Женат/замужем</option>
                            <option>в разводе</option>
                            <option>холост/не замужем</option>
                        </select>
                    </label>
                </div>
            </div>
            <span class="label label-important">Телефоны</span>

            <div class="container">
                <div class="control-group pull-left">
                    <label class="control-label">Домашний</label>

                    <div class="controls">
                        <label>
                            <input type="text" class="input-large">
                        </label>
                    </div>
                </div>
                <div class="control-group pull-left">
                    <label class="control-label">Мобильный</label>

                    <div class="controls">
                        <label>
                            <input type="text" class="input-large">
                        </label>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Рабочий</label>

                    <div class="controls">
                        <label>
                            <input type="text" class="input-large">
                        </label>
                    </div>
                </div>
                <div class="container">
                    <span class="label label-important">Иждивенцы</span>

                    <div class="container">
                        <div class="control-group pull-left">
                            <label class="control-label">Дети/количество</label>

                            <div class="controls">
                                <label>
                                    <input type="text" class="input-large">
                                </label>
                            </div>
                        </div>
                        <div class="control-group pull-left">
                            <label class="control-label">Супруг(а)</label>

                            <div class="controls">
                                <label>
                                    <input type="text" class="input-large">
                                </label>
                            </div>
                        </div>
                        <div class="control-group pull-left">
                            <label class="control-label">Родители, количество</label>

                            <div class="controls">
                                <label>
                                    <input type="text" class="input-large">
                                </label>
                            </div>
                        </div>
                        <div class="control-group pull-left">
                            <label class="control-label">Другие, количество</label>

                            <div class="controls">
                                <label>
                                    <input type="text" class="input-large">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<div id="slide-panel3" class="container slide-panel">
    <p class="text-info lead">Дополнительная информация</p>

    <form class="form-vertical" id="form3">
        <div class="container">
            <div class="control-group">
                <label class="control-label">Образование</label>

                <div class="controls">
                    <label>
                        <select>
                            <option>Высшее</option>
                            <option>Неоконченное высшее</option>
                            <option>Среднее специальное</option>
                            <option>Среднее</option>
                            <option>Курсы повышения квалификации</option>
                            <option>Количество курсов</option>
                        </select>
                    </label>
                </div>
            </div>
            <div class="container">
                <div class="control-group pull-left">
                    <label class="control-label">Учебное заведение</label>

                    <div class="controls">
                        <label>
                            <input type="text" class="input-large">
                        </label>
                    </div>
                </div>
                <div class="control-group pull-left">
                    <label class="control-label">Квалификация</label>

                    <div class="controls">
                        <label>
                            <input type="text" class="input-large">
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <span class="label label-important">Сведения о занятости<br></span>

            <div class="control-group">
                <label class="control-label">Занятость</label>

                <div class="controls">
                    <label>
                        <textarea></textarea>
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Род деятельности</label>

                <div class="controls">
                    <label>
                        <input type="text" class="input-large">
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Работодатель</label>

                <div class="controls">
                    <label>
                        <input type="text" class="input-large">
                    </label>
                </div>
            </div>
            <div class="container">
                <div class="control-group pull-left">
                    <label class="control-label">Фактический адрес</label>

                    <div class="controls">
                        <label>
                            <input type="text" class="input-large">
                        </label>
                    </div>
                </div>
                <div class="control-group pull-left">
                    <label class="control-label">Телефон</label>

                    <div class="controls">
                        <label>
                            <input type="text" class="input-large">
                        </label>
                    </div>
                </div>
                <div class="container"></div>
            </div>
            <div class="container">
                <div class="control-group">
                    <label class="control-label">Стаж</label>

                    <div class="controls">
                        <input type="number" min="0" class="input-large">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Стаж в текущем виде деятельности</label>

                    <div class="controls">
                        <input type="number" min="0" class="input-large">
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<div class="container slide-panel" id="slide-panel4">
<p class="text-info lead">Собственность</p>

<form id="form4">
    <div class="container">
        <span class="label label-info">Квартира</span>

        <div class="control-group">
            <label class="control-label">Тип</label>

            <div class="controls">
                <select>
                    <option>Съемная</option>
                    <option>Собственная</option>
                    <option>Коммунальная</option>
                </select>
            </div>
        </div>
        <form class="form-vertical">
            <div class="control-group">
                <label class="control-label">Ф.И.О. собственника</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group pull-left">
                <label class="control-label">Адрес</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group pull-left">
                <label class="control-label">Количество комнат</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Общая площать</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Количество лиц, проживающих в квартире</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">№ Документа, подтверждающий право собственности</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
        </form>
        <span class="label label-info">Частный дом</span>

        <div class="container">
            <div class="control-group">
                <label class="control-label">Ф.И.О. собственника</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">№ Документа, подтверждающий право собственности</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="control-group pull-left">
            <label class="control-label">Адрес</label>

            <div class="controls">
                <input type="text" class="input-large">
            </div>
        </div>
        <div class="control-group pull-left">
            <label class="control-label">Количество комнат</label>

            <div class="controls">
                <input type="text" class="input-large">
            </div>
        </div>
        <div class="control-group pull-left">
            <label class="control-label">Количество комнат</label>

            <div class="controls">
                <input type="text" class="input-large">
            </div>
        </div>
    </div>
    <div class="container">
        <span class="label label-info">Автомобиль</span>

        <div class="control-group">
            <label class="control-label">Тип</label>

            <div class="controls">
                <select>
                    <option>Собственный</option>
                    <option>По генеральной доверенности</option>
                </select>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="control-group">
            <label class="control-label">Ф.И.О. собственника</label>

            <div class="controls">
                <input type="text" class="input-large">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Марка, модель</label>

            <div class="controls">
                <input type="text" class="input-large">
            </div>
        </div>
        <div class="container">
            <div class="control-group pull-left">
                <label class="control-label">Год выпуска</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group pull-left">
                <label class="control-label">Рег. знак</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group pull-left">
                <label class="control-label">Свидетельство о регистрации, №</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <span class="label label-info">Земельный участок</span>

        <form class="form-vertical">
            <div class="control-group">
                <label class="control-label">ФИО собственника</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group pull-left">
                <label class="control-label">Адрес</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Общая площадь</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group pull-left">
                <label class="control-label">Свидетельство о регистрации, №</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="container"></div>
        </form>
    </div>
    <div class="container">
        <span class="label label-info">Другое имущество</span>

        <div class="control-group">
            <label class="control-label">ФИО собственника</label>

            <div class="controls">
                <input type="text" class="input-large">
            </div>
        </div>
    </div>
</form>
</div>
<div class="container slide-panel" id="slide-panel5">
    <p class="text-info lead">Ежемесячные доходы и расходы</p>

    <form class="form-vertical" id="form5">
        <div class="container">
            <span class="label label-info">Доходы<br></span>

            <div class="control-group">
                <label class="control-label">Основная зарплата</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Премии и выплаты за переработку</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Зарплата за работу по совместительству</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Доход от сдачи недвижимости в аренду</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Дивиденды</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Доход в виде страховых выплат</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Прочее</label>

                <div class="controls">
                    <input type="text" class="input-large">
                </div>
            </div>
            <div class="container">
                <span class="label label-important">Расходы</span>

                <div class="control-group">
                    <label class="control-label">Текущие расходы</label>

                    <div class="controls">
                        <input type="text" class="input-large">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Плата за жилье</label>

                    <div class="controls">
                        <input type="text" class="input-large">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Страховые платежи</label>

                    <div class="controls">
                        <input type="text" class="input-large">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Обслуживание кредитов</label>

                    <div class="controls">
                        <input type="text" class="input-large">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Налоги</label>

                    <div class="controls">
                        <input type="text" class="input-large">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Расходы на образование</label>

                    <div class="controls">
                        <input type="text" class="input-large">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Алименты</label>

                    <div class="controls">
                        <input type="text" class="input-large">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Прочее</label>

                    <div class="controls">
                        <input type="text" class="input-large">
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<div class="container slide-panel" id="slide-panel6">
    <p class="text-info lead">Сведения о кредитах</p>

    <div class="container">
        <form class="form-vertical" id="form6">
            <div class="control-group pull-left">
                <label class="control-label">Кредитовались ли вы</label>

                <div class="controls">
                    <select>
                        <option>Да</option>
                        <option>Нет</option>
                    </select>
                </div>
            </div>

            <br/>

            <div class=" control-group pull-left">
                <div class="table-lable">
                    <label class="control-label">Дата получения</label>
                </div>
                <div class="table-lable">
                    <label class="control-label">Дата погашения</label>
                </div>
                <div class="table-lable">
                    <label class="control-label">Сумма</label>
                </div>

                <div class="container controls" id="credit-info-container">

                    <input type="date" class="input-large">
                    <input type="date" class="input-large">
                    <input type="text" class="input-large">
                </div>
            </div>
        </form>
    </div>
    <div class="container" id="credit-info-buttons">
        <button class="btn btn-success" id="addButton" href="#">
            <span class="btn-label">Добавить</span>
        </button>
        <button class="btn btn-danger" id="removeButton" href="#">
            <span class="btn-label">Удалить</span>
        </button>
    </div>
</div>

<div class="container slide-panel" id="slide-panel7">
    <p class="text-info lead">Дополнительные сведения</p>

    <form id="form7">
        <div class="control-group">
            <label class="control-label">Существует ли судебное решение, которое Вы не выполняли</label>

            <div class="controls">
                <select>
                    <option>Да</option>
                    <option>Нет</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Участвуете ли Вы в настоящее время в судебном процессе?</label>

            <div class="controls">
                <select>
                    <option>Да</option>
                    <option>Нет</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Были ли Вы когда-нибудь приговорены судом к какому-либо наказанию?</label>

            <div class="controls">
                <select>
                    <option>Да</option>
                    <option>Нет</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Существуют или существовали в прошлом решения суда об ограничении Вашей
                дееспособности или об установлении над Вами опекунства?</label>

            <div class="controls">
                <select>
                    <option>Да</option>
                    <option>Нет</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Увлекаетесь ли Вы каким-либо видом спорта на профессиональном уровне?</label>

            <div
                    class="controls">
                <select>
                    <option>Да</option>
                    <option>Нет</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Являетесь ли Вы инвалидом 1 или 2 группы</label>

            <div class="controls">
                <select>
                    <option>Да</option>
                    <option>Нет</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Являетесь ли Вы ВИЧ-инфицированным или больным СПИДом?</label>

            <div class="controls">
                <select>
                    <option>Да</option>
                    <option>Нет</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Страдаете ли вы какими-либо психическими заболеваниями (слабоумием, эпилепсией,
                другими тяжелыми расстройствами нервной системы)?</label>

            <div class="controls">
                <select>
                    <option>Да</option>
                    <option>Нет</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Имеются ли у Вас какие-либо сердечно-сосудистые, онкологические или иные
                угрожающие жизни заболевания?</label>

            <div class="controls">
                <select>
                    <option>Да</option>
                    <option>Нет</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Имеются ли у Вас просроченные долги?</label>

            <div class="controls">
                <select>
                    <option>Да</option>
                    <option>Нет</option>
                </select>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Есть ли у Вас обязательства по уплате алиментов?</label>

            <div class="controls">
                <select>
                    <option>Да</option>
                    <option>Нет</option>
                </select>
            </div>
        </div>
        <div class="container">
            <button class="btn btn-primary" id="sendAllButton" href="#">
                <span class="btn-label">Отправить</span>
            </button>
        </div>
    </form>
</div>
<div class="container" id="slide">
    <a class="btn btn-info btn-slide next right" href="#"><span class="btn-label">Далее</span></a>
    <a class="btn btn-info btn-slide prev" href="#"><span class="btn-label">Назад</span></a>
</div>
</div>
<footer>
    <div class="container">
        <div class="row-fluid">

            <div id="footer-links" class="span6">
                <nav>
                    <ul id="info">
                        <li><a href="/about">О сайте</a></li>
                        <li><a href="mailto:aaaa@example.com">Контакты</a></li>
                        <li><a href="http://blog.example.com">Блог</a></li>

                    </ul>
                </nav>
                <span id="copyright">Copyright &copy; 2013 ХНУРЭ.</span>
            </div>
        </div>
    </div>
</footer>
<script src="https://app.divshot.com/js/bootstrap.min.js"></script>

</body>

</html>