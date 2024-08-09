/* Service Section */
frontend_services = [
    { 'title': `Create a unique and custom website`, 'description': `build a website that's show your businness identity` },
    { 'title': `Slicing from design to actual website`, 'description': `implementing from your design to a full functional website` },
    { 'title': `Fix or improve ui from your website`, 'description': `do your website need a new ui feature or some feature need to be fix` },
    { 'title': `Optimize UI performance and 'On-Page' SEO`, 'description': `do your website load very slow and has bad on page SEO let me analyze and optimize it for you add functionality to your website` },
    { 'title': `Integrate API`, 'description': `i will connect and fetch your API and show the data to your Front End` },
]

backend_services = [
    { 'title': `Website business logic design`, 'description': `do you want to have a website with functionally workflow?` },
    { 'title': `Database scheme design`, 'description': `allready has business logic but don't know how to implement it to database scheme` },
    { 'title': `Database integration`, 'description': `do you want to add database to your website so your website can store data and interact with it?` },
    { 'title': `Add new functional feature`, 'description': `Something like add payment gateway, or maybe adding authorization sign up sign in, data management, data procesing, etc` }
]

frontend_tech_stack = {
    'language': [
        ['HTML', 'assets/img/vendor/html-5-svgrepo-com.svg'],
        ['CSS', 'assets/img/vendor/css-3-svgrepo-com.svg'],
        ['Javascript', 'assets/img/vendor/js-official-svgrepo-com.svg'],
    ],
    'framework': [
        ['Bootstrap', 'assets/img/vendor/bootstrap-svgrepo-com.svg'],
        ['Tailwinds', 'assets/img/vendor/tailwindcss-white-full.svg'],
    ],
    'runtime_library': [
        ['React', 'assets/img/vendor/React-icon.svg'],
    ],
    'bundler_preprocessor': [
        ['SASS', 'assets/img/vendor/sass-full-svgrepo-com.svg'],
        ['Webpack', 'assets/img/vendor/'],
        ['Vite', 'assets/img/vendor/'],
    ]
}

backend_tech_stack = {
    'language': [
        ['PHP', 'assets/img/vendor/php3-svgrepo-com.svg'],
        ['Javascript', 'assets/img/vendor/js-official-svgrepo-com.svg'],
        ['Java', 'assets/img/vendor/'],
    ],
    'framework': [
        ['Laravel', 'assets/img/vendor/laravel-original.svg'],
        ['Codeigniter', 'assets/img/vendor/codeigniter-svgrepo-com.svg'],
        ['Springboot', 'assets/img/vendor/Spring_Boot.svg'],
        ['Quarkus', 'assets/img/vendor/quarkus-icon-svgrepo-com.svg'],
        ['ExpressJS', 'assets/img/vendor/'],
        ['NextJS', 'assets/img/vendor/'],
    ],
    'runtime_library': [
        ['NodeJS', 'assets/img/vendor/Node.js_logo.svg'],
    ],
    'dbms': [
        ['MySQL', 'assets/img/vendor/mysql-logo-svgrepo-com.svg'],
        ['PostgreSQL', 'assets/img/vendor/postgresql.svg'],
    ]
}

const service_section = document.querySelector('#service .container .section-body')
const service_container = document.getElementById('service-container')
const tech_stack_conatiner = document.getElementById('tech-stack')
const service_list = document.getElementById('service-list')
const as_frontend = document.getElementById('as-frontend')
const as_backend = document.getElementById('as-backend')

as_frontend.addEventListener('click', () => {

    if (!as_frontend.classList.contains('active')) {
        as_frontend.classList.toggle('active')
        as_backend.classList.remove('active')
    }

    tech_stack_conatiner.innerHTML = ''
    service_list.innerHTML = ''

    let stack_title = document.createElement('h3')
    stack_title.innerHTML = 'Front end tech stack i can use'

    let stack_language_list = document.createElement('ul')
    stack_language_list.classList.add('tech-stack-list')
    stack_language_list.id = 'tech-stack-language-list'
    stack_language_list.innerHTML = ''
    let stack_language_list_header = document.createElement('h4')
    stack_language_list_header.innerHTML = 'Language'
    stack_language_list.append(stack_language_list_header)

    frontend_tech_stack['language'].forEach(e => {
        let language_item = document.createElement('li')
        language_item.classList.add('tech-stack-list-item')

        let language_icon = document.createElement('img')
        language_icon.setAttribute('src', e[1])
        language_icon.setAttribute('alt', e[0])

        language_item.append(language_icon)
        stack_language_list.append(language_item)
    })

    let stack_framework_list = document.createElement('ul')
    stack_framework_list.classList.add('tech-stack-list')
    stack_framework_list.id = 'tech-stack-framework-list'
    stack_framework_list.innerHTML = ''
    let stack_framework_list_header = document.createElement('h4')
    stack_framework_list_header.innerHTML = 'Framework'
    stack_framework_list.append(stack_framework_list_header)

    frontend_tech_stack['framework'].forEach(e => {
        let framework_item = document.createElement('li')
        framework_item.classList.add('tech-stack-list-item')

        let framework_icon = document.createElement('img')
        framework_icon.setAttribute('src', e[1])
        framework_icon.setAttribute('alt', e[0])

        framework_item.append(framework_icon)
        stack_framework_list.append(framework_item)
    })

    let stack_runtimelibrary_list = document.createElement('ul')
    stack_runtimelibrary_list.classList.add('tech-stack-list')
    stack_runtimelibrary_list.id = 'tech-stack-runtime-library-list'
    stack_runtimelibrary_list.innerHTML = ''
    let stack_runtimelibrary_list_header = document.createElement('h4')
    stack_runtimelibrary_list_header.innerHTML = 'Runtime & library'
    stack_runtimelibrary_list.append(stack_runtimelibrary_list_header)

    frontend_tech_stack['runtime_library'].forEach(e => {
        let runtime_library_item = document.createElement('li')
        runtime_library_item.classList.add('tech-stack-list-item')

        let runtime_library_icon = document.createElement('img')
        runtime_library_icon.setAttribute('src', e[1])
        runtime_library_icon.setAttribute('alt', e[0])

        runtime_library_item.append(runtime_library_icon)
        stack_runtimelibrary_list.append(runtime_library_item)
    })

    let stack_bundlerpreprocessor_list = document.createElement('ul')
    stack_bundlerpreprocessor_list.classList.add('tech-stack-list')
    stack_bundlerpreprocessor_list.id = 'tech-stack-bundle-preprocessor-list'
    stack_bundlerpreprocessor_list.innerHTML = ''
    let stack_bundlerpreprocessor_list_header = document.createElement('h4')
    stack_bundlerpreprocessor_list_header.innerHTML = 'Bundler & preprocessor'
    stack_bundlerpreprocessor_list.append(stack_bundlerpreprocessor_list_header)

    frontend_tech_stack['bundler_preprocessor'].forEach(e => {
        let bundler_preprocessor_item = document.createElement('li')
        bundler_preprocessor_item.classList.add('tech-stack-list-item')

        let bundler_preprocessor_icon = document.createElement('img')
        bundler_preprocessor_icon.setAttribute('src', e[1])
        bundler_preprocessor_icon.setAttribute('alt', e[0])

        bundler_preprocessor_item.append(bundler_preprocessor_icon)
        stack_bundlerpreprocessor_list.append(bundler_preprocessor_item)
    })

    tech_stack_conatiner.append(stack_title)
    tech_stack_conatiner.append(stack_language_list)
    tech_stack_conatiner.append(stack_framework_list)
    tech_stack_conatiner.append(stack_runtimelibrary_list)
    tech_stack_conatiner.append(stack_bundlerpreprocessor_list)

    frontend_services.forEach(e => {
        let service_list_item = document.createElement('li')
        service_list_item.classList.add('service-list-item')

        let service_card = document.createElement('div')
        service_card.classList.add('card')

        let card_header = document.createElement('div')
        card_header.classList.add('card-header')

        service_card.append(card_header)

        let card_body = document.createElement('div')
        card_body.classList.add('card-body')

        let card_title = document.createElement('h4')
        card_title.classList.add('service-title')
        card_title.innerHTML = e['title']

        let card_description = document.createElement('p')
        // card_description.innerHTML = e['description']

        card_body.append(card_title)
        card_body.append(card_description)

        service_card.append(card_body)

        service_list_item.append(service_card)

        service_list.append(service_list_item)

    })

    service_container.append(service_list)
}
)

as_backend.addEventListener('click', () => {

    if (!as_backend.classList.contains('active')) {
        as_backend.classList.toggle('active')
        as_frontend.classList.remove('active')
    }

    tech_stack_conatiner.innerHTML = ''
    service_list.innerHTML = ''

    let stack_title = document.createElement('h3')
    stack_title.innerHTML = 'Back end tech stack i can use'

    let stack_language_list = document.createElement('ul')
    stack_language_list.classList.add('tech-stack-list')
    stack_language_list.id = 'tech-stack-language-list'
    stack_language_list.innerHTML = ''
    let stack_language_list_header = document.createElement('h4')
    stack_language_list_header.innerHTML = 'Language'
    stack_language_list.append(stack_language_list_header)

    backend_tech_stack['language'].forEach(e => {
        let language_item = document.createElement('li')
        language_item.classList.add('tech-stack-list-item')

        let language_icon = document.createElement('img')
        language_icon.setAttribute('src', e[1])
        language_icon.setAttribute('alt', e[0])

        language_item.append(language_icon)
        stack_language_list.append(language_item)
    })

    let stack_framework_list = document.createElement('ul')
    stack_framework_list.classList.add('tech-stack-list')
    stack_framework_list.id = 'tech-stack-framework-list'
    stack_framework_list.innerHTML = ''
    let stack_framework_list_header = document.createElement('h4')
    stack_framework_list_header.innerHTML = 'Framework'
    stack_framework_list.append(stack_framework_list_header)

    backend_tech_stack['framework'].forEach(e => {
        let framework_item = document.createElement('li')
        framework_item.classList.add('tech-stack-list-item')

        let framework_icon = document.createElement('img')
        framework_icon.setAttribute('src', e[1])
        framework_icon.setAttribute('alt', e[0])

        framework_item.append(framework_icon)
        stack_framework_list.append(framework_item)
    })

    let stack_runtimelibrary_list = document.createElement('ul')
    stack_runtimelibrary_list.classList.add('tech-stack-list')
    stack_runtimelibrary_list.id = 'tech-stack-runtime-library-list'
    stack_runtimelibrary_list.innerHTML = ''
    let stack_runtimelibrary_list_header = document.createElement('h4')
    stack_runtimelibrary_list_header.innerHTML = 'Runtime & library'
    stack_runtimelibrary_list.append(stack_runtimelibrary_list_header)

    backend_tech_stack['runtime_library'].forEach(e => {
        let runtime_library_item = document.createElement('li')
        runtime_library_item.classList.add('tech-stack-list-item')

        let runtime_library_icon = document.createElement('img')
        runtime_library_icon.setAttribute('src', e[1])
        runtime_library_icon.setAttribute('alt', e[0])

        runtime_library_item.append(runtime_library_icon)
        stack_runtimelibrary_list.append(runtime_library_item)
    })

    let stack_dbms_list = document.createElement('ul')
    stack_dbms_list.classList.add('tech-stack-list')
    stack_dbms_list.id = 'tech-stack-bundle-preprocessor-list'
    stack_dbms_list.innerHTML = ''
    let stack_dbms_list_header = document.createElement('h4')
    stack_dbms_list_header.innerHTML = 'Bundler & preprocessor'
    stack_dbms_list.append(stack_dbms_list_header)

    backend_tech_stack['dbms'].forEach(e => {
        let dbms_item = document.createElement('li')
        dbms_item.classList.add('tech-stack-list-item')

        let dbms_icon = document.createElement('img')
        dbms_icon.setAttribute('src', e[1])
        dbms_icon.setAttribute('alt', e[0])

        dbms_item.append(dbms_icon)
        stack_dbms_list.append(dbms_item)
    })

    tech_stack_conatiner.append(stack_title)
    tech_stack_conatiner.append(stack_language_list)
    tech_stack_conatiner.append(stack_framework_list)
    tech_stack_conatiner.append(stack_runtimelibrary_list)
    tech_stack_conatiner.append(stack_dbms_list)

    backend_services.forEach(e => {
        let service_list_item = document.createElement('li')
        service_list_item.classList.add('service-list-item')

        let service_card = document.createElement('div')
        service_card.classList.add('card')

        let card_header = document.createElement('div')
        card_header.classList.add('card-header')

        service_card.append(card_header)

        let card_body = document.createElement('div')
        card_body.classList.add('card-body')

        let card_title = document.createElement('h4')
        card_title.classList.add('service-title')
        card_title.innerHTML = e['title']

        let card_description = document.createElement('p')
        // card_description.innerHTML = e['description']

        card_body.append(card_title)
        card_body.append(card_description)

        service_card.append(card_body)

        service_list_item.append(service_card)

        service_list.append(service_list_item)

    })

    service_container.append(service_list)
})