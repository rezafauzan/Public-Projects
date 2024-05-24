/* Service Section */
const service_section = document.querySelector('#service .container .section-body')

const as_frontend = document.getElementById('as-frontend')

frontend_services = [
    { 'title': `Create a unique and custom website`, 'description': `build a website that's show your businness identity` },
    { 'title': `Slicing from design to actual website`, 'description': `implementing from your design to a full functional website` },
    { 'title': `Fix or improve ui from your website`, 'description': `do your website need a new ui feature or some feature need to be fix` },
    { 'title': `Optimize UI performance and 'On-Page' SEO`, 'description': `do your website load very slow and has bad on page SEO let me analyze and optimize it for you add functionality to your website` },
    { 'title': `Integrate API`, 'description': `i will connect and fetch your API and show the data to your Front End` },
]

backend_services = [
    { 'title': `Website business logic design`, 'description': `do you want to have a website with functionally workflow?`},
    { 'title': `Database scheme design`, 'description': `allready has business logic but don't know how to implement it to database scheme`},
    { 'title': `Database integration`, 'description': `do you want to add database to your website so your website can store data and interact with it?`},
    { 'title': `Add new functional feature`, 'description': `Something like add payment gateway, or maybe adding authorization sign up sign in, data management, data procesing, etc`}
]

as_frontend.addEventListener('click', () => {
    if(document.getElementById('service-container')){
        service_section.removeChild(document.getElementById('service-container'))
    }

    let service_container = document.createElement('div')
    service_container.classList.add('service-container')
    service_container.id = 'service-container'

    service_section.append(service_container)

    service_container.innerHTML = `
        <h3>Service As Front-End</h3>
            
        <div class="tech-stack">
            <span>Tech Stack I Use: </span>
            <img src="" alt="Bootstrap" />
            <img src="" alt="Tailwinds" />
            <img src="" alt="React" />
            <img src="" alt="SASS" />
        </div>
    `

    let service_list_container = document.createElement('ul')
    service_list_container.classList.add('service-list')

    frontend_services.forEach(e => {
        let service_list_item = document.createElement('li')
        service_list_item.classList.add('service-list-item')
        
        let service_card = document.createElement('div')
        service_card.classList.add('card')

        let card_header = document.createElement('div')
        card_header.classList.add('card-header')
        
        let card_title = document.createElement('h4')
        card_title.innerHTML = e['title']

        card_header.append(card_title)
        service_card.append(card_header)

        let card_body = document.createElement('div')
        card_body.classList.add('card-body')

        let card_description = document.createElement('p')
        card_description.innerHTML = e['description']

        card_body.append(card_description)

        service_card.append(card_body)

        service_list_item.append(service_card)

        service_list_container.append(service_list_item)

    })

    service_container.append(service_list_container)
})

const as_backend = document.getElementById('as-backend')
as_backend.addEventListener('click', () => {
    if(document.getElementById('service-container')){
        service_section.removeChild(document.getElementById('service-container'))
    }

    let service_container = document.createElement('div')
    service_container.classList.add('service-container')
    service_container.id = 'service-container'

    service_section.append(service_container)

    service_container.innerHTML = `
        <h3>Service As Back-End</h3>
            
        <div class="tech-stack">
            <span>Tech Stack I Use: </span>
            <img src="" alt="PHP Native" />
            <img src="" alt="Laravel" />
            <img src="" alt="Codeigniter" />
            <img src="" alt="Node JS" />
            <img src="" alt="Springboot" />
            <img src="" alt="Quarkus" />
            <img src="" alt="My SQL" />
            <img src="" alt="Postgres" />
        </div>
    `

    let service_list_container = document.createElement('ul')
    service_list_container.classList.add('service-list')

    backend_services.forEach(e => {
        let service_list_item = document.createElement('li')
        service_list_item.classList.add('service-list-item')
        
        let service_card = document.createElement('div')
        service_card.classList.add('card')

        let card_header = document.createElement('div')
        card_header.classList.add('card-header')
        
        let card_title = document.createElement('h4')
        card_title.innerHTML = e['title']

        card_header.append(card_title)
        service_card.append(card_header)

        let card_body = document.createElement('div')
        card_body.classList.add('card-body')

        let card_description = document.createElement('p')
        card_description.innerHTML = e['description']

        card_body.append(card_description)

        service_card.append(card_body)

        service_list_item.append(service_card)

        service_list_container.append(service_list_item)

    })

    service_container.append(service_list_container)
})