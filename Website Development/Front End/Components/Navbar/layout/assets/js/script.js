const burger_toggler = document.querySelector('#burger-toggler')
const nav_list = document.querySelector('.nav-list')

burger_toggler.addEventListener('click', () => {
    nav_list.classList.toggle('active')
})

