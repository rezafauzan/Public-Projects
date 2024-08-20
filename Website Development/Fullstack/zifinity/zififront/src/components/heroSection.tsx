import React from "react"
import Section from "./section"

export async function getStaticProps() {
    const response = await fetch('http://zifinity-backend-laravel.test/api/landing-page-contents')
    const data = await response.json()
    return {
        props: {
            data
        }
    }
}

type HeroSectionProps = {
    data: object
}

const HeroSection: React.FC<HeroSectionProps> = ({data}) => {
    console.log(data)

    const Herousel: React.FC = () => {
        return (
            <div className="herousel">
                <ul className="herousel-list">
                    <li className="herousel-list-item">
                        <div className="copytext">
                            <h2 className="copytext-headline"></h2>
                            <p className="copytext-content"></p>
                        </div>
                    </li>
                </ul>
            </div>
        )
    }

    const bodyContent = (`
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
    `)

    return (
        <Section id="hero" headContent="" bodyContent={bodyContent} />
    )
}

export default HeroSection