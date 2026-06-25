# warsawjs-workshop-19-portfolio

⛩️ WarsawJS Workshop #19 — Front-end

## Preview 🎉

<https://piecioshka.github.io/warsawjs-workshop-19-portfolio/app/>

## Deployment 🚀

### GitHub Pages

1. Wejdź do `Settings` (projektu)
2. Przeskroluj do sekcji `GitHub Pages`
3. `Source` wybierz brancha `master`
    + pojawi się link do strony

Link nie wyświetla Twojego projektu?

* Spr. czy dopisałeś `app/` do linku
* Spr. czy masz plik `index.html` w katalogu `app`
* Dodaj plik `.nojekyll` do katalogu głównego projektu

### `GitHub Pages` (Omijamy `app/` w URLu)

1. Instalacja wymaganego oprogramowania

    ```bash
    npm install -g gh-pages
    ```

2. Wrzucenie zawartości katalogu `app/` do brancha `gh-pages`

    ```bash
    gh-pages -d app/
    ```

3. Zmiana brancha źródłowego z `master` na `gh-pages` w interfejsie GitHuba

## Features

> Typ projektu: landing page

* :white_check_mark: Baner
    + https://picsum.photos/720/300
* :white_check_mark: Galeria zdjęć
    + https://picsum.photos/300/300
* :white_check_mark: Newsletter
* :white_check_mark: Menu
    + :white_check_mark: Skrolowanie do sekcji za pomocą hashtaga
* :no_entry: Karuzela: Podgląd powiększonych zdjęć

## Krok po kroku 👣

### Etap 0: Beforek

<details>

* Stworzyć workspace-u
* Stworzyć katalogu projektu
* Stworzyć katalogu `app`
* Stworzyć plik `app/index.html`
* W pliku `index.html` wpisujemy podstawowe tagi:
    html, head, body
* Wykorzystać tagi title, meta

</details>

### Etap 1: Baner

<details>

* W `body` dodać kontener `div` o id `page`
* Wewnątrz tagu `div` dodać `section` o id `banner` (język angielski)
* Dodać nagłówek pierwszego poziomu `h1` z tekstem `Portfolio`
* Stworzyć plik `app/styles/main.css`
* Osadzić plik CSS w HTMLu za pomocą `<link rel="stylesheet" href="styles/main.css"/>`
* Zresetować domyślne style (reguła `margin`) dla przeglądarki dla `body, h1, p`
* Zdefiniować szerokość kontenera z id `page` na `720px` za pomocą reguły
    `width` dla kontenera z id `page`
* Wycentrować kontener `#page` definiując automatyczne marginesy `margin-left` i `margin-right`
* Zdefiniować wysokość dla kontenera `#banner` np. `300px`
* Ustawić tło za pomocą reguły `background-image`
* Wyłączyć powtarzanie
* Wycentrować tło
* Wycentrować text w banerze za pomocą `Flexbox`

    ```css
    #banner {
        // ...
        display: flex;
        justify-content: center;
        align-items: center;
    }
    ```

</details>

### Etap 2: Galeria zdjęć

<details>

* Stworzyć kontener `section` o id `gallery` z nagłówkiem `h1` o treści
     `Galeria zdjęć`
* Stworzyć listę za pomocą tagów `ul, li`
* Każdy element list powinien zawierać obrazek (wykorzystać tą samą usługę
    zdjęć co w banerze)

    UWAGA: Obrazek osadzamy za pomocą znacznika `img`

* Zresetować domyślne style dla list ul, li

    ```css
    ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }
    ```

* Zmienić sposób prezentacji zdjęć w galerii za pomocą Flexboxa

    ```css
    ul {
        // ...
        display: flex;
        justify-content: space-around;
        flex-wrap: wrap;
    }
    ```

</details>

### Etap 3: Newsletter (Wykorzystujemy `JavaScript`)

<details>

* Stworzyć kontener `section` o id `newsletter` z nagłówkiem `h1` o treści `Newsletter`
* Dodać pod nagłówkiem formularz za pomocą znacznika `form`
* Stworzyć `input` typu `email` z atrybutem `name` o treści `email`
* Dodatkowe: Ustawić atrybut `required`
* Stworzyć `label` z zawartością `Twój email`
* Stworzyć `input` typu `submit` z atrybutem `value` o treści `Wyślij`
* Stworzyć plik `app/scripts/main.js`
* Osadzić plik JavaScript w HTMLu za pomocą `<script src="scripts/main.js"></script>`

    UWAGA: osadzić ten kod przed zamknięciem znacznika `body`

* Stworzyć w pliku JavaScript zmienną, która będzie przechowywała referencję
    do formularza

    UWAGA: korzystamy z funkcji `document.querySelector`

* Podpiąć się pod zdarzenia `submit` na formularzu
* Wyłączyć domyślne zachowanie formularza w ciele handlera zdarzenia `submit`
    za pomocą funkcji `evt.preventDefault()`
* Stworzyć wewnątrz handlera zmienną przechowującą dane wpisane w formularzu

    UWAGA: Wykorzystać do tego konstruktor `FormData` przekazując argument
    będący wskaźnikiem do formularza

* Skonwertować dane z formularza na mapę za pomocą konstruktora `Map`
* Stworzyć funkcję `displayMessage` do prezentacji komunikatu, który zostanie
    przekazany w pierwszym parametrze
* Zbudować wiadomość z wykorzystaniem `template stringów` i stworzyć zmienną `message`
* Przekazać zmienną `message` podczas uruchomienia funkcji `displayMessage`

</details>

### Etap 4: Menu

<details>

* Stworzyć kontener `nav` o id `menu`
* Stworzyć listę za pomocą `ul, li` wewnątrz nowo stworzonego kontenera
* Stworzyć link w każdym elemencie listy

    UWAGA: wykorzystujemy znacznik `a`

* Zdefiniować odpowiedni wartości w atrybucie `href` aby po hashtagu były
    wartości z `id` każdej sekcji
* (Opcjonalne) Ostylować elementy menu według uznania

</details>

### Etap 5: Karuzela (Wykorzystujemy `JavaScript`)

<details>

Dla chętnych 🏆

</details>

## Źródła, czyli tam gdzie warto zajrzeć

* https://github.com/piecioshka/colors - kolory
* https://picsum.photos/ - darmowe zdjęcia
* https://flexboxfroggy.com/ - nauka Flexboxa
* https://experiments.withgoogle.com/chrome
* https://codepen.io/joshnh/pen/paxbE
* https://codepen.io/piecioshka/pens/loved/10/
* https://codepen.io/eva_trostlos/pen/akQoLN
* https://codepen.io/aakashrodrigues/pen/Gfhjw

## License

[The MIT License](http://piecioshka.mit-license.org) @ 2026
