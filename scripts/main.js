const $form = document.querySelector('form');

function displayMessage(message) {
    alert(message);
}

$form.addEventListener('submit', (evt) => {
    evt.preventDefault();

    const data = new FormData($form);
    const map = new Map(data);
    const message = map.get('email');
    displayMessage(`Na podany adres email "${message}" zostało wysłane potwierdzenie zapisania się w newsletterze`);
});
