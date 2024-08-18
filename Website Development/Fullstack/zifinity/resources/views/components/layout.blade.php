<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zifinity | Landing Page</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="dark-theme">

    <!-- No surplus words or unnecessary actions. - Marcus Aurelius -->

    <div class="page-wrapper">

        <?php if (isset($_SESSION['error_message'])) : ?>
        <div class="modal alert">
            <?= $_SESSION['error_message'] ?>
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

            {{ $slot }}

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

    @vite(['resources/js/script.js', 'resources/js/utility.js', 'resources/js/populate-service.js', 'resources/js/herousel.js'])

</body>

</html>
