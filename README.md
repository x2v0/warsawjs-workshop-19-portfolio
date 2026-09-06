
# warsawjs-workshop-19-portfolio

⛩️ Тестовый проект

## Предпросмотр 🎉

<https://x2v0.github.io/warsawjs-workshop-19-portfolio/app/>

## Развёртывание 🚀

### GitHub Pages

1. Перейдите в `Settings` (настройки проекта)
2. Найдите раздел `GitHub Pages`
3. В `Source` выберите ветку `master`
   * появится ссылка на страницу

Ссылка не показывает ваш проект?

* Проверьте, дописали ли вы `app/` к ссылке
* Проверьте, есть ли файл `index.html` в каталоге `app`
* Добавьте файл `.nojekyll` в корневой каталог проекта

### `GitHub Pages` (Как убрать `app/` из URL)

1. Установите необходимое программное обеспечение

    ```bash
    npm install -g gh-pages
    ```

2. Загрузите содержимое каталога `app/` в ветку `gh-pages`

    ```bash
    gh-pages -d app/
    ```

3. В интерфейсе GitHub измените ветку-источник с `master` на `gh-pages`

## Возможности

> Тип проекта: лендинг

* :white_check_mark: Баннер
    + https://picsum.photos/720/300
* :white_check_mark: Галерея изображений
    + https://picsum.photos/300/300
* :white_check_mark: Новостная рассылка (Newsletter)
* :white_check_mark: Меню
    + :white_check_mark: Прокрутка к разделам с помощью хэштегов
* :no_entry: Карусель: Просмотр увеличенных изображений

## Пошаговая инструкция 👣

### Этап 0: Подготовка

<details>

* Создать рабочую область (workspace)
* Создать каталог проекта
* Создать каталог `app`
* Создать файл `app/index.html`
* В файле `index.html` прописать базовые теги:
    html, head, body
* Использовать теги title, meta

</details>

### Этап 1: Баннер

<details>

* В `body` добавить контейнер `div` с id `page`
* Внутри тега `div` добавить секцию `section` с id `banner` (на английском)
* Добавить заголовок первого уровня `h1` с текстом `Portfolio`
* Создать файл `app/styles/main.css`
* Подключить CSS в HTML с помощью `<link rel="stylesheet" href="styles/main.css"/>`
* Сбросить стандартные стили (правило `margin`) для браузера для `body, h1, p`
* Задать ширину контейнера с id `page` на `720px` с помощью правила `width`
* Выровнять контейнер `#page` по центру, задав автоматические отступы `margin-left` и `margin-right`
* Задать высоту для контейнера `#banner`, например, `300px`
* Установить фон с помощью правила `background-image`
* Отключить повторение фона
* Выровнять фон по центру
* Выровнять текст в баннере с помощью `Flexbox`

    ```css
    #banner {
        // ...
        display: flex;
        justify-content: center;
        align-items: center;
    }
    ```

</details>

### Этап 2: Галерея изображений

<details>

* Создать контейнер `section` с id `gallery` и заголовком `h1` с текстом `Galeria zdjęć`
* Создать список с помощью тегов `ul, li`
* Каждый элемент списка должен содержать изображение (использовать тот же сервис, что и для баннера)

    ПРИМЕЧАНИЕ: Изображение вставляется с помощью тега `img`

* Сбросить стандартные стили для списков ul, li

    ```css
    ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }
    ```

* Изменить способ отображения изображений в галерее с помощью Flexbox

    ```css
    ul {
        // ...
        display: flex;
        justify-content: space-around;
        flex-wrap: wrap;
    }
    ```

</details>

### Этап 3: Новостная рассылка (Используем `JavaScript`)

<details>

* Создать контейнер `section` с id `newsletter` и заголовком `h1` с текстом `Newsletter`
* Добавить под заголовком форму с помощью тега `form`
* Создать поле ввода `input` типа `email` с атрибутом `name` со значением `email`
* Дополнительно: Установить атрибут `required`
* Создать метку `label` с содержимым `Twój email`
* Создать кнопку отправки `input` типа `submit` с атрибутом `value` со значением `Wyślij`
* Создать файл `app/scripts/main.js`
* Подключить JavaScript в HTML с помощью `<script src="scripts/main.js"></script>`

    ПРИМЕЧАНИЕ: подключить этот код перед закрывающим тегом `body`

* В файле JavaScript создать переменную, которая будет хранить ссылку на форму

    ПРИМЕЧАНИЕ: используем функцию `document.querySelector`

* Подписаться на событие `submit` на форме
* Отключить стандартное поведение формы в теле обработчика события `submit` с помощью функции `evt.preventDefault()`
* Внутри обработчика создать переменную, хранящую данные, введённые в форму

    ПРИМЕЧАНИЕ: Использовать для этого конструктор `FormData`, передав ему ссылку на форму

* Преобразовать данные из формы в карту (map) с помощью конструктора `Map`
* Создать функцию `displayMessage` для отображения сообщения, которое будет передано в первом параметре
* Создать сообщение, используя `шаблонные строки` (template strings), и создать переменную `message`
* Передать переменную `message` при вызове функции `displayMessage`

</details>

### Этап 4: Меню

<details>

* Создать контейнер `nav` с id `menu`
* Внутри нового контейнера создать список с помощью `ul, li`
* Создать ссылку в каждом элементе списка

    ПРИМЕЧАНИЕ: используем тег `a`

* Определить соответствующие значения в атрибуте `href` так, чтобы после хэштега были значения `id` каждого раздела
* (Опционально) Стилизовать элементы меню по своему усмотрению

</details>

### Этап 5: Карусель (Используем `JavaScript`)

<details>

Для желающих 🏆

</details>

## Источники, куда стоит заглянуть

* https://github.com/piecioshka/colors - цвета
* https://picsum.photos/ - бесплатные изображения
* https://flexboxfroggy.com/ - изучение Flexbox
* https://experiments.withgoogle.com/chrome
* https://codepen.io/joshnh/pen/paxbE
* https://codepen.io/piecioshka/pens/loved/10/
* https://codepen.io/eva_trostlos/pen/akQoLN
* https://codepen.io/aakashrodrigues/pen/Gfhjw

