import Section from "./section"
import styles from "./style/contactSection.module.css"
import Image from "next/image"

const ContactSection: React.FC = () => {
    const ContactForm: React.FC = () => {
        return (
            <form method="post" action='' className={styles.form}>
                <input type="email" name="email" placeholder="Email Address" className={styles.input}/>
                <textarea name="messages" placeholder="Messages" className={styles.textarea}></textarea>
                <button type="submit" className={styles.button}>Sends!</button>
            </form>
        )
    }

    const ContactsList: React.FC = () => {
        return (
            <ul className={styles.contact_list}>
                <li className={styles.contact_list_item}>
                    <Image src="/assets/img/vendor/email.svg" alt="Email" width={40} height={40} />
                        <p>rezafauzan593@gmail.com</p>
                        <p>rezafauzan945@gmail.com</p>
                </li>
                <li className={styles.contact_list_item}>
                    <Image src="/assets/img/vendor/youtube_small_logo.svg" alt="Youtube" width={40} height={40} />
                        <div className={styles.youtube}>
                            <p>Learn a little from me</p>
                            <a href="https://youtube.com/@rezafauzanadhima" className={styles.contact_link}>Reza
                                Fauzan
                                Adhima</a>
                            <p>Let's have some fun</p>
                            <a href="https://youtube.com/@rezafauzanadhima" className={styles.contact_link}>Reza
                                Fauzan
                                Adhima</a>
                        </div>
                </li>
                <li className={styles.contact_list_item}>
                    <Image src="/assets/img/vendor/Telegram_logo.svg" alt="Telegram" width={40} height={40} />
                        <a href="https://telegram/@rezafauzanadhima" className={styles.contact_link}>@RezaFauzan1945</a>
                </li>
            </ul>
        )
    }

    const SocialMediaList: React.FC = () => {
        return (
            <ul className={styles.social_media_list}>
                <li className={styles.social_media_list_item}>
                    <a href="#" className={styles.social_media_link}>
                        <Image src="/assets/img/vendor/Facebook_logo.svg" alt="Facebook" width={40} height={40} />
                    </a>
                </li>
                <li className={styles.social_media_list_item}>
                    <a href="#" className={styles.social_media_link}>
                        <Image src="/assets/img/vendor/Instagram_logo_2016.svg" alt="Instagram" width={40} height={40} />
                    </a>
                </li>
                <li className={styles.social_media_list_item}>
                    <a href="#" className={styles.social_media_link}>
                        <Image src="/assets/img/vendor/Logo_of_Twitter.svg" alt="Twitter" width={40} height={40} />
                    </a>
                </li>
                <li className={styles.social_media_list_item}>
                    <a href="#" className={styles.social_media_link}>
                        <Image src="/assets/img/vendor/linkedin_small_logo.svg" alt="LinkedIn" width={40} height={40} />
                    </a>
                </li>
            </ul>
        )
    }

    const ContactContainer: React.FC = () => {
        return(
            <div className={styles.contact_container}>
                <ContactForm />
                <ContactsList />
                <SocialMediaList />
            </div>
        )
    }

    return (<Section sectionStyleClass={styles.section} containerStyleClass={styles.container} sectionHeadStyleClass={styles.section_head} sectionBodyStyleClass={styles.section_body} id="feature" headContent={<><h2>Get in touch</h2><p>Reach me out by fill this form i'll get in touch soon also check my social media below</p></>} bodyContent={<ContactContainer />} />)
}

export default ContactSection