<?php
require 'database_handler.php';
$hero_contents = fetch("hero_headline, hero_description", "hero", 4);
$about_contents = fetch("about_headline, about_content, about_picture", "about", 4);
$feature_contents = fetch("feature_title, feature_description, feature_icon", "feature", 4);
$services = fetchleftjoined(["service_title", "service_description", "service_image"], ["service_category_name"], "service", "service_category", "service_category_id", "id", 4);
$frontend_techstacks = fetchleftjoined(["techstack_name", "techstack_type", "techstack_icon"], ["techstack_category_name"], "techstack", "techstack_category", "techstack_category_id", "id where techstack_category_id = 1", 4);
$backend_techstacks = fetchleftjoined(["techstack_name", "techstack_type", "techstack_icon"], ["techstack_category_name"], "techstack", "techstack_category", "techstack_category_id", "id where techstack_category_id = 1", 4);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body class="dark-theme">

    <div class="page-wrapper">

        <?php if (isset($_SESSION['error_message'])) : ?>
            <div class="modal alert">
                <?= $_SESSION['error_message']; ?>
            </div>
        <?php session_unset(); endif; ?>

        <header>

            <div class="utility">

                <div class="clock">
                    <p>My country local time ⌚</p>
                    <span id="clock-hour">00</span>
                    <span>:</span>
                    <span id="clock-minute">00</span>
                    <span>:</span>
                    <span id="clock-second">00</span>
                    <span id="clock-AMPM">AM</span>
                </div>

                <div class="theme-toggler">
                    <input type="checkbox" id="theme-toggler">
                    <input type="range" class="dark" id="theme-slider" max="1" disabled>
                </div>

            </div>

            <nav>

                <div class="brand">
                    <a href="#" class="brand-link">Zigzag's Infinity Team ∞</a>
                </div>

                <ul role="list" class="nav-list">
                    <li class="nav-list-item"><a href="#" class="nav-link active">Product</a></li>
                    <li class="nav-list-item"><a href="#" class="nav-link">Portfolio</a></li>
                    <li class="nav-list-item"><a href="#" class="nav-link">Services</a></li>
                    <li class="nav-list-item"><a href="#" class="nav-link">About</a></li>
                    <li class="nav-list-item"><a href="#" class="nav-link">Contact</a></li>
                </ul>

                <div class="cta">
                    <a href="#" class="cta-button">Call To Action</a>
                </div>

                <div class="navbar-toggler">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>

            </nav>

        </header>

        <main>

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
                            <?php foreach ($hero_contents as $index => $hero_content) : ?>
                                <li class="herousel-list-item <?= ($index === 0) ? "active" : ""; ?>">
                                    <div class="copytext">
                                        <h2 class="hero-headline">
                                            <?= $hero_content->hero_headline; ?>
                                        </h2>
                                        <p class="hero-description">
                                            <?= $hero_content->hero_description; ?>
                                        </p>
                                    </div>
                                </li>
                            <?php endforeach; ?>
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
                        <?php foreach ($about_contents as $index => $about_content) : ?>
                            <div class="me">
                                <h3><?= $about_content->about_headline; ?></h3>
                                <?= $about_content->about_content; ?>
                                <!-- I create digital experiences that engage, inspire, and set you
                                apart.-->

                                <div class="cta">
                                    <p>More about me on my <a href="#resume" class="cta-button">resume here ></a></p>
                                </div>

                            </div>

                            <div class="picture-of-me">
                                <div class="picture-frame">
                                    <img src="assets/img/me/<?= $about_content->about_picture; ?>" alt="Reza Fauzan Adhima's portrait">
                                </div>
                            </div>
                        <?php endforeach; ?>
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
                            <?php foreach ($feature_contents as $index => $feature_content) : ?>
                                <li class="feature-list-item">
                                    <div class="card">

                                        <div class="card-header">
                                            <img src="assets/img/drawable/<?= $feature_content->feature_icon; ?>" alt="Zigzag's Infinity features Clean, Semantic, And Maintenable Source Code" class="card-header-image">
                                        </div>

                                        <div class="card-body">
                                            <h3 class="feature-details-title">
                                                <?= $feature_content->feature_title; ?>
                                            </h3>
                                            <!-- <p class="feature-details-subtitle">Feature Subtitle</p> -->
                                            <p class="feature-details-description">
                                                <?= $feature_content->feature_description; ?>
                                                <!-- <a href="#" class="card-cta-link">Learn more here ></a> -->
                                            </p>
                                        </div>

                                    </div>
                                </li>
                            <?php endforeach; ?>
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
                                <img src="assets/img/frontend.jpg" alt="As Frontend">
                                <p>Front End</p>
                            </div>

                            <div class="card as-backend" id="as-backend">
                                <img src="assets/img/backend.jpg" alt="As Backend">
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
                                    <img src="assets/img/vendor/email.svg" alt="Email">
                                    <p>rezafauzan593@gmail.com</p>
                                    <p>rezafauzan945@gmail.com</p>
                                </li>
                                <li class="contact-list-item">
                                    <img src="assets/img/vendor/youtube_small_logo.svg" alt="Youtube">
                                    <div class="youtube">
                                        <p>Learn a little from me</p>
                                        <a href="https://youtube.com/@rezafauzanadhima" class="contact-link">Reza Fauzan
                                            Adhima</a>
                                        <p>Let's have some fun</p>
                                        <a href="https://youtube.com/@rezafauzanadhima" class="contact-link">Reza Fauzan
                                            Adhima</a>
                                    </div>
                                </li>
                                <li class="contact-list-item">
                                    <img src="assets/img/vendor/Telegram_logo.svg" alt="Telegram">
                                    <a href="https://telegram/@rezafauzanadhima" class="contact-link">@RezaFauzan1945</a>
                                </li>
                            </ul>

                            <ul class="social-media-list">
                                <li class="social-media-list-item">
                                    <a href="#" class="social-media-link">
                                        <img src="assets/img/vendor/Facebook_logo.svg" alt="Facebook">
                                    </a>
                                </li>
                                <li class="social-media-list-item">
                                    <a href="#" class="social-media-link">
                                        <img src="assets/img/vendor/Instagram_logo_2016.svg" alt="Instagram">
                                    </a>
                                </li>
                                <li class="social-media-list-item">
                                    <a href="#" class="social-media-link">
                                        <img src="assets/img/vendor/Logo_of_Twitter.svg" alt="Twitter">
                                    </a>
                                </li>
                                <li class="social-media-list-item">
                                    <a href="#" class="social-media-link">
                                        <img src="assets/img/vendor/linkedin_small_logo.svg" alt="LinkedIn">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

        </main>

        <footer>

            <nav class="footer-nav">

                <div class="copyright">
                    Copyright MIT License © 2024 Reza Fauzan Adhima & Infinity Team. All Rights Reserved
                </div>

                <ul class="nav-list">
                    <li class="nav-list-item">
                        <a href="#" class="nav-link">Terms & Co.</a>
                    </li>

                    <li class="nav-list-item">
                        <a href="#" class="nav-link">Contact</a>
                    </li>
                </ul>

            </nav>
        </footer>
    </div>

    <script>
        frontend_services = [
            <?php
            foreach ($services as $service) {
                if ($service->service_category_name === "Frontend") {
                    echo "{ 'title': '$service->service_title', 'description': '$service->service_description', $service->service_image},\n\t";
                }
            }
            ?>
        ]

        backend_services = [
            <?php
            foreach ($services as $service) {
                if ($service->service_category_name === "Frontend") {
                    echo "{ 'title': '$service->service_title', 'description': '$service->service_description', $service->service_image},\n\t";
                }
            }
            ?>
        ]
    </script>

    <script src="assets/js/script.js"></script>
    <script src="assets/js/utility.js"></script>
    <script src="assets/js/populate-service.js"></script>
    <script src="assets/js/herousel.js"></script>

</body>

</html>