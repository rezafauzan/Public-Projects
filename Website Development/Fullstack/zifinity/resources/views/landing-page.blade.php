<x-layout>
    <nav class="section-nav show">

        <button id="section-nav-toggler">&gt</button>

        <ul class="section-nav-list">

            <li class="section-nav-list-item">
                <h4 class="section-nav-header">Section Navigation</h4>
                <hr>
            </li>

            <li class="section-nav-list-item">
                <a href="#hero" class="section-nav-link">Hero</a>
            </li>

            <li class="section-nav-list-item">
                <a href="#about" class="section-nav-link">About</a>
            </li>

            <li class="section-nav-list-item">
                <a href="#feature" class="section-nav-link">Feature</a>
            </li>

            <li class="section-nav-list-item">
                <a href="#service" class="section-nav-link">Service</a>
            </li>

            <li class="section-nav-list-item">
                <a href="#contact" class="section-nav-link">Contact</a>
            </li>

        </ul>

    </nav>

    <section class="hero" id="hero">
        <div class="section-body">
            <div class="herousel" id="herousel">

                <ul class="herousel-list">
                    @foreach ($hero_contents as $index => $hero_content)
                        <li class="herousel-list-item {{ $index === 0 ? 'active' : '' }}">
                            <div class="copytext">
                                <h2 class="hero-headline">
                                    {{ $hero_content->hero_headline }}
                                </h2>
                                <p class="hero-description">
                                    {{ $hero_content->hero_description }}
                                </p>
                            </div>
                        </li>
                    @endforeach
                </ul>

                <ul class="herousel-indicator-list">
                </ul>

                <div class="herousel-navigation">
                    <button id="herousel-previous-button">&lt</button>
                    <button id="herousel-next-button">&gt</button>
                </div>

            </div>
        </div>
    </section>

    <section class="about" id="about">
        <div class="container">

            <div class="section-heading">
                <h2>Let me introduce myself</h2>
            </div>

            <div class="section-body">
                @foreach ($about_contents as $index => $about_content)
                    <div class="me">
                        <h3> {{ $about_content->about_headline }} ?></h3>
                        {{ $about_content->about_content }} ?>
                        <!-- I create digital experiences that engage, inspire, and set you
                        apart.-->

                        <div class="cta">
                            <p>More about me on my <a href="#resume" class="cta-button">resume here ></a></p>
                        </div>

                    </div>

                    <div class="picture-of-me">
                        <div class="picture-frame">
                            <img src="{{ Vite::asset('/resources/img/me/' . $about_content->about_picture) }}"
                                alt="Reza Fauzan Adhima's portrait" loading="lazy">
                        </div>
                    </div>
                @endforeach
            </div>

        </div>
    </section>

    <section class="feature" id="feature">
        <div class="container">

            <div class="section-heading">
                <h2>Our Service Benefits</h2>
            </div>

            <div class="section-body">

                <ul class="feature-list">
                    @foreach ($feature_contents as $index => $feature_content)
                    <li class="feature-list-item">
                        <div class="card">

                            <div class="card-header">
                                <img src="{{ Vite::asset('resources/img/drawable/' . $feature_content->feature_icon) }}"
                                    alt="Zigzag's Infinity features Clean, Semantic, And Maintenable Source Code" loading="lazy"
                                    class="card-header-image">
                            </div>

                            <div class="card-body">
                                <h3 class="feature-details-title">
                                    {{ $feature_content->feature_title }}
                                </h3>
                                <!-- <p class="feature-details-subtitle">Feature Subtitle</p> -->
                                <p class="feature-details-description">
                                    {{ $feature_content->feature_description }}
                                    <!-- <a href="#" class="card-cta-link">Learn more here ></a> -->
                                </p>
                            </div>

                        </div>
                    </li>
                    @endforeach
                </ul>

            </div>

        </div>
    </section>

    <section class="service" id="service">
        <div class="container">

            <div class="section-heading">
                <h2>What Can I Provide ?</h2>
                <p>Click on one card bellow</p>
            </div>

            <div class="section-body">

                <div class="role" id="role">
                    <div class="card as-frontend" id="as-frontend">
                        <img src="{{ Vite::asset('resources/img/frontend.jpg') }}" alt="As Frontend" loading="lazy">
                        <p>Front End</p>
                    </div>

                    <div class="card as-backend" id="as-backend">
                        <img src="{{ Vite::asset('resources/img/backend.jpg') }}" alt="As Backend" loading="lazy">
                        <p>Back End</p>
                    </div>
                </div>

                <div class="service-container" id="service-container">

                    <div class="tech-stack" id="tech-stack">
                        <!-- <h3>Front end tech stack i can use</h3> -->
                        <!-- <ul class="tech-stack-list" id="tech-stack-language-list">
                            <h4>Language</h4>
                            <li class="tech-stack-list-item"><img src="assets/img/vendor/html-5-svgrepo-com.svg"
                                    alt="HTML"></li>
                            <li class="tech-stack-list-item"><img src="assets/img/vendor/css-3-svgrepo-com.svg"
                                    alt="CSS"></li>
                            <li class="tech-stack-list-item"><img
                                    src="assets/img/vendor/js-official-svgrepo-com.svg" alt="Javascript"></li>
                        </ul>
                        <ul class="tech-stack-list" id="tech-stack-framework-list">
                            <h4>Framework</h4>
                            <li class="tech-stack-list-item"><img
                                    src="assets/img/vendor/bootstrap-svgrepo-com.svg" alt="Bootstrap"></li>
                            <li class="tech-stack-list-item"><img
                                    src="assets/img/vendor/tailwindcss-white-full.svg" alt="Tailwinds"></li>
                        </ul>
                        <ul class="tech-stack-list" id="tech-stack-runtime-library-list">
                            <h4>Runtime &amp; library</h4>
                            <li class="tech-stack-list-item"><img src="assets/img/vendor/React-icon.svg"
                                    alt="React"></li>
                        </ul>
                        <ul class="tech-stack-list" id="tech-stack-bundle-preprocessor-list">
                            <h4>Bundler &amp; preprocessor</h4>
                            <li class="tech-stack-list-item"><img
                                    src="assets/img/vendor/sass-full-svgrepo-com.svg" alt="SASS"></li>
                            <li class="tech-stack-list-item"><img src="assets/img/vendor/" alt="Webpack"></li>
                            <li class="tech-stack-list-item"><img src="assets/img/vendor/" alt="Vite"></li>
                        </ul> -->
                    </div>

                    <ul class="service-list" id="service-list">
                        <!--
                        <li class="service-list-item">
                            <div class="card">
                                <div class="card-header">
                                    <img src="assets/img/drawable/Infinycon/Search Engine Friendly.svg" alt="" class="card-header-image">
                                </div>
                                <div class="card-body">
                                    <h4 class="service-title">Create a unique and custom website</h4>
                                    <p></p>
                                </div>
                            </div>
                        </li>
                        <li class="service-list-item">
                            <div class="card">
                                <div class="card-header">
                                    <img src="assets/img/drawable/Infinycon/Search Engine Friendly.svg" alt="" class="card-header-image">
                                </div>
                                <div class="card-body">
                                    <h4 class="service-title">Slicing from design to actual website</h4>
                                    <p></p>
                                </div>
                            </div>
                        </li>
                        <li class="service-list-item">
                            <div class="card">
                                <div class="card-header">
                                    <img src="assets/img/drawable/Infinycon/Search Engine Friendly.svg" alt="" class="card-header-image">
                                </div>
                                <div class="card-body">
                                    <h4 class="service-title">Fix or improve ui from your website</h4>
                                    <p></p>
                                </div>
                            </div>
                        </li>
                        <li class="service-list-item">
                            <div class="card">
                                <div class="card-header">
                                    <img src="assets/img/drawable/Infinycon/Search Engine Friendly.svg" alt="" class="card-header-image">
                                </div>
                                <div class="card-body">
                                    <h4 class="service-title">Optimize UI performance and 'On-Page' SEO</h4>
                                    <p></p>
                                </div>
                            </div>
                        </li>
                        <li class="service-list-item">
                            <div class="card">
                                <div class="card-header">
                                    <img src="assets/img/drawable/Infinycon/Search Engine Friendly.svg" alt="" class="card-header-image">
                                </div>
                                <div class="card-body">
                                    <h4 class="service-title">Integrate API</h4>
                                    <p></p>
                                </div>
                            </div>
                        </li> -->
                    </ul>

                </div>

            </div>

        </div>
    </section>

    <!-- <section class="portfolio" id="portfolio">
        <div class="container">

            <div class="section-heading">
                <h2>Not Having Ideas Yet?</h2>
                <p>Don't Worry! Check my Portfolio and Product for inspiration</p>
            </div>

            <div class="section-body">

                <div class="project-category-navigation">
                    <ul class="project-nav-list">

                        <li class="project-nav-list-item">
                            <a href="#portfolio" class="project-nav-link active">Website & Web App </a>
                        </li>

                        <li class="project-nav-list-item">
                            <a href="#portfolio" class="project-nav-link">Mobile App </a>
                        </li>

                        <li class="project-nav-list-item">
                            <a href="#portfolio" class="project-nav-link">Artificial Inteligence </a>
                        </li>

                        <li class="project-nav-list-item">
                            <a href="#portfolio" class="project-nav-link">IOT</a>
                        </li>

                    </ul>
                </div>

                <div class="portfolio-container">

                    <div class="project-carousel">
                        <ul class="project-list">

                            <li class="project-list-item">
                                <img src="assets/img/1.png" alt="Portfolio">
                            </li>

                            <li class="project-list-item">
                                <img src="assets/img/1.png" alt="Portfolio">
                            </li>

                            <li class="project-list-item">
                                <img src="assets/img/1.png" alt="Portfolio">
                            </li>

                        </ul>
                    </div>

                </div>


            </div>

        </div>
    </section> -->

    <section class="contact" id="contact">
        <div class="container">
            <div class="section-heading">
                <h2>Get in touch</h2>
                <p>Reach me out by fill this form i'll get in touch soon also check my social media below</p>
            </div>

            <div class="section-body">
                <div class="contact-container">
                    <form method="POST" action="#">
                        <input type="email" name="email" id="email" placeholder="Email address">
                        <textarea name="messages" id="messages" placeholder="Additional messages"></textarea>
                        <button type="submit">Contact us</button>
                    </form>

                    <ul class="contact-list">
                        <li class="contact-list-item">
                            <img src="{{ Vite::asset('resources/img/vendor/email.svg') }}" alt="Email" loading="lazy">
                            <p>rezafauzan593@gmail.com</p>
                            <p>rezafauzan945@gmail.com</p>
                        </li>
                        <li class="contact-list-item">
                            <img src="{{ Vite::asset('resources/img/vendor/youtube_small_logo.svg') }}" alt="Youtube" loading="lazy">
                            <div class="youtube">
                                <p>Learn a little from me</p>
                                <a href="https://youtube.com/@rezafauzanadhima" class="contact-link">Reza
                                    Fauzan
                                    Adhima</a>
                                <p>Let's have some fun</p>
                                <a href="https://youtube.com/@rezafauzanadhima" class="contact-link">Reza
                                    Fauzan
                                    Adhima</a>
                            </div>
                        </li>
                        <li class="contact-list-item">
                            <img src="{{ Vite::asset('resources/img/vendor/Telegram_logo.svg') }}" alt="Telegram" loading="lazy">
                            <a href="https://telegram/@rezafauzanadhima" class="contact-link">@RezaFauzan1945</a>
                        </li>
                    </ul>

                    <ul class="social-media-list">
                        <li class="social-media-list-item">
                            <a href="#" class="social-media-link">
                                <img src="{{ Vite::asset('resources/img/vendor/Facebook_logo.svg') }}" alt="Facebook" loading="lazy">
                            </a>
                        </li>
                        <li class="social-media-list-item">
                            <a href="#" class="social-media-link">
                                <img src="{{ Vite::asset('resources/img/vendor/Instagram_logo_2016.svg') }}" alt="Instagram" loading="lazy">
                            </a>
                        </li>
                        <li class="social-media-list-item">
                            <a href="#" class="social-media-link">
                                <img src="{{ Vite::asset('resources/img/vendor/Logo_of_Twitter.svg') }}" alt="Twitter" loading="lazy">
                            </a>
                        </li>
                        <li class="social-media-list-item">
                            <a href="#" class="social-media-link">
                                <img src="{{ Vite::asset('resources/img/vendor/linkedin_small_logo.svg') }}" alt="LinkedIn" loading="lazy">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</x-layout>
