import Image from "next/image"
import styles from "./styles/article.module.css"

const ArticleSection: React.FC = () => {
    return (
        <article>
            <div className={styles.article_container + " p-4"}>
                <div className={styles.article_hero + " mb-4 relative w-full rounded overflow-clip"} style={{ height: '360px' }}>
                    <Image src="/assets/img/view-illuminated-neon-gaming-keyboard-setup-controller.jpg" alt="Article hero" fill style={{ objectFit: 'fill', aspectRatio: '16 / 9' }} />
                </div>

                <div className={styles.article}>
                    <header className="mb-4">
                        <h1 className="text-4xl">Title</h1>
                        <div className="flex justify-between">
                            <h2>By Reza Fauzan Adhima | 04 Sept 2024</h2>
                        </div>
                    </header>

                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio eius eaque fuga autem sint assumenda vel, expedita nisi enim blanditiis ratione dolor, at earum eum quas dolorem soluta quos error?
                    </p>

                    <div className={styles.article_mention_hyperlink}>
                        <p>Baca juga: <a href="#">Article</a></p>
                    </div>

                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia, dolores, animi consequatur provident incidunt atque praesentium illum aliquid quam omnis quis quia iure, velit quaerat eum quod similique cumque! Accusantium? Lorem ipsum dolor sit, amet consectetur adipisicing elit. Iure optio quos quia minima voluptate eligendi distinctio quasi itaque natus sequi maiores nam mollitia corporis, necessitatibus facilis minus quam placeat impedit.
                    </p>
                    <br />
                    <p>
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Rem consequatur voluptatem cupiditate architecto dignissimos porro perspiciatis adipisci, quas quae eveniet! Esse tenetur reprehenderit neque vel qui quas deleniti delectus dignissimos.
                    </p>

                    <div className={styles.article_ads_banner}>
                        <a href="#">
                            <img src="/assets/img/banner/banner-1.svg" alt="Advertising Banner" className={styles.ads_banner_image} />
                        </a>
                    </div>

                    <p>
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorem maiores ducimus, minima debitis laudantium impedit deserunt omnis magni quibusdam, aliquam molestias repellendus ex suscipit, iure facilis recusandae sit sed error.
                        Facilis voluptatum quas natus pariatur iste placeat esse reiciendis fugit! Voluptatum recusandae consequuntur voluptatibus earum rem. Quos dolores placeat nemo nulla itaque. Unde qui ratione fugit laborum facilis quasi cumque?
                        Exercitationem iste voluptatum mollitia totam, doloremque est, sequi corrupti perferendis incidunt praesentium tempora laboriosam similique amet maxime sed magni laudantium, qui autem temporibus! Illum recusandae excepturi deserunt voluptates deleniti dicta.
                        Sint exercitationem qui in accusantium voluptatum dolores odit reiciendis explicabo inventore provident expedita nihil rem quo eligendi, quam, id quos? Eligendi nam, provident corrupti officiis inventore dolores beatae recusandae ratione.
                    </p>
                    <br />
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quae?
                    </p>

                    <div className={styles.article_mention_hyperlink}>
                        <p>Baca juga: <a href="#">Article</a></p>
                    </div>

                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati fugiat rem quia quas ipsum, ad vel itaque voluptatum. Impedit corrupti pariatur hic accusantium ab fuga asperiores iste alias esse quisquam!
                        Iusto fugiat iure officia natus perferendis debitis animi quis impedit veritatis magnam, error minima aut fuga eaque at corrupti aperiam deleniti inventore. Magni culpa dolore quam distinctio. Et, corporis ducimus.
                        Eos minima dolorum nisi molestias quidem, aliquid eveniet eaque officiis commodi, saepe itaque? Dolorem, placeat unde enim, a corporis, voluptates rem id aliquid temporibus magnam et ipsam quia veniam adipisci!
                        Ex veniam ab cupiditate animi? Explicabo dolorem, error pariatur minus nihil ex illo rerum. Similique adipisci sint id nam ad error aut omnis odio quisquam veniam, reiciendis eos temporibus laboriosam.
                    </p>

                    <div className={styles.article_ads_banner}>
                        <a href="#">
                            <img src="/assets/img/banner/banner-2.svg" alt="Advertising Banner" className={styles.ads_banner_image} />
                        </a>
                    </div>

                    <p>
                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nobis ea eligendi dicta numquam repellat officia ipsum! Recusandae sequi molestias aliquid perspiciatis ab, possimus optio qui laudantium excepturi ad. Excepturi, cupiditate.
                        Reprehenderit deserunt, quae aliquid doloribus expedita reiciendis quam. Quasi quam error nulla pariatur libero accusamus, perferendis aliquid, aliquam iure, eum omnis laboriosam vel ab saepe debitis adipisci similique a natus?
                        Asperiores expedita vitae aut maiores excepturi commodi fugit delectus dolorem dicta sint possimus voluptatem earum consequuntur doloribus maxime explicabo laboriosam ipsa, accusamus, magnam odio enim! Iusto laborum reiciendis laboriosam voluptate?
                        Quas architecto unde cumque distinctio quasi laudantium optio sunt rem laboriosam earum? Aperiam commodi voluptates hic cumque laboriosam doloremque odit dignissimos cupiditate laudantium impedit, numquam ducimus delectus deleniti sapiente voluptate.
                    </p>
                    <br />
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, possimus!
                    </p>

                    <div className={styles.article_mention_hyperlink}>
                        <p>Baca juga: <a href="#">Article</a></p>
                    </div>

                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam asperiores qui repellendus assumenda fuga vero amet, ipsam, eligendi in eos, illo et ipsa nostrum aut ab enim? Sint, ipsam totam.
                    </p>

                    <div className={styles.article_ads_banner}>
                        <a href="#">
                            <img src="/assets/img/banner/banner-3.svg" alt="Advertising Banner" className={styles.ads_banner_image} />
                        </a>
                    </div>

                    <div className={styles.author_box + " author_box my-6 p-4 flex flex-col justify-between gap-6"}>
                        <h4>Author</h4>
                        <div className="author_detail flex items-center gap-6">
                            <div className="author_profile_picture_container bg-sky-400">
                                <img src="#" alt="Author Picture" className="profile_picture rounded-full" width={240} />
                            </div>
                            <div className="author_bio_container flex flex-col justify-between gap-6">
                                <h6 className="author_name">
                                    Reza Fauzan Adhima
                                </h6>
                                <p className="author_bio text-justify">
                                    Lorem ipsum dolor sit amet adipisicing elit.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div className={styles.related_post + " my-6 p-4 flex flex-col justify-between gap-6"}>
                        <h4>Related Post</h4>
                        <nav className="related_post_nav">
                            <ul className="flex justify-around">
                                <li>
                                    <h4>
                                        <a href="#" className="hover:text-sky-400">
                                            <p>Previous Post</p>
                                            Judul Artikel Sebelum
                                        </a>
                                    </h4>
                                </li>
                                <li>
                                    <h4>
                                        <a href="#" className="hover:text-sky-400">
                                            <p>For You Post</p>
                                            Judul Artikel Mungkin Anda Suka
                                        </a>
                                    </h4>
                                </li>
                                <li>
                                    <h4>
                                        <a href="#" className="hover:text-sky-400">
                                            <p>Next Post</p>
                                            Judul Artikel Selanjutnya
                                        </a>
                                    </h4>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <aside className={styles.article_aside + " p-6"}>

                    <div className="post-search-box mb-4">
                        <h4 className="mb-4 p-4 text-center border-b border-slate-700">Search</h4>
                        <p className="mb-4">Find what you are looking for here!</p>
                        <form className="search-tool w-full h-10 flex overflow-hidden" action="#" method="GET">
                            <input type="text" name="search" className="post-search-input h-full" id="search" placeholder="Search" />
                            <button className="post-search-submit w-full h-full px-4 bg-sky-400">Search</button>
                        </form>
                    </div>

                    <div className="author-box mb-7">
                        <h4 className="mb-4 p-4 text-center border-b border-slate-700">Author</h4>
                        <img src="#" alt="Author's Profile Picture" className="author-profile-picture rounded-full float-left clear-left m-4" width={40} height={40} />
                        <h5 className="author-name mb-2">Author Name</h5>
                        <p className="author-desc text-justify">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia quis hic laudantium! Autem ex voluptas repellat suscipit numquam, dignissimos
                        </p>
                    </div>

                    <div className="aside-cta mb-4">
                        <h4 className="mb-4 p-4 text-center border-b border-slate-700">Subscription</h4>
                        <p className="my-4 text-center">Get our updates notification!</p>
                        <form className="subcription-form w-full h-10 flex overflow-hidden" action="#" method="POST">
                            <input type="email" name="email" id="email-subscription" className="email-subscription h-full" placeholder="Email Adress" required />
                            <button type="submit" className="email-subscription-submit w-full h-full px-4 bg-sky-400">Subscribe!</button>
                        </form>
                    </div>

                    <div className="aside-social-media mb-4">

                        <h4 className="mb-4 p-4 text-center border-b border-slate-700">Follow Our Social Media</h4>

                        <ul className="social-media-list flex justify-around">
                            <li className="social-media-list-item flex justify-center items-center">
                                <a href="#" className="social-media-link">
                                    <i className="fa-brands fa-facebook social-media-icon" style={{ color: '#4267B2' }}></i>
                                </a>
                            </li>
                            <li className="social-media-list-item flex justify-center items-center">
                                <a href="#" className="social-media-link">
                                    <i className="fa-brands fa-twitter social-media-icon" style={{ color: '#4267B2' }}></i>
                                </a>
                            </li>
                            <li className="social-media-list-item flex justify-center items-center">
                                <a href="#" className="social-media-link">
                                    <i className="fa-brands fa-google-plus social-media-icon" style={{ color: '#4267B2' }}></i>
                                </a>
                            </li>
                            <li className="social-media-list-item flex justify-center items-center">
                                <a href="#" className="social-media-link">
                                    <img src="assets/img/component/Instagram_logo_2016.svg" alt="Instagram Icon" className="social-media-icon" />
                                </a>
                            </li>
                        </ul>

                    </div>

                    <div className="aside-recent-post mb-4">

                        <h4 className="mb-4 p-4 text-center border-b border-slate-700">Recent Article</h4>

                        <ul className="recent-post-list">
                            <li className="recent-post-list-item mb-4">
                                <h4 className="recent-post-title mb-4"><a href="#">Article 1</a></h4>
                                <p className="recent-post-short-desc">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit....
                                </p>
                            </li>
                            <li className="recent-post-list-item mb-4">
                                <h4 className="recent-post-title mb-4"><a href="#">Article 2</a></h4>
                                <p className="recent-post-short-desc">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit....
                                </p>
                            </li>
                            <li className="recent-post-list-item mb-4">
                                <h4 className="recent-post-title mb-4"><a href="#">Article 3</a></h4>
                                <p className="recent-post-short-desc">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit....
                                </p>
                            </li>
                            <li className="recent-post-list-item mb-4">
                                <h4 className="recent-post-title mb-4"><a href="#">Article 4</a></h4>
                                <p className="recent-post-short-desc">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit....
                                </p>
                            </li>
                            <li className="recent-post-list-item mb-4">
                                <h4 className="recent-post-title mb-4"><a href="#">Article 5</a></h4>
                                <p className="recent-post-short-desc">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit....
                                </p>
                            </li>
                        </ul>

                    </div>

                    <div className="aside-popular-article mb-4">

                        <h4 className="mb-4 p-4 text-center border-b border-slate-700">Popular Article</h4>

                        <ul className="popular-article-list">
                            <li className="popular-article-list-item mb-4">
                                <h4 className="popular-article-title mb-4"><a href="#">Article 1</a></h4>
                                <p className="popular-article-short-desc">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit....
                                </p>
                            </li>
                            <li className="popular-article-list-item mb-4">
                                <h4 className="popular-article-title mb-4"><a href="#">Article 2</a></h4>
                                <p className="popular-article-short-desc">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit....
                                </p>
                            </li>
                            <li className="popular-article-list-item mb-4">
                                <h4 className="popular-article-title mb-4"><a href="#">Article 3</a></h4>
                                <p className="popular-article-short-desc">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit....
                                </p>
                            </li>
                            <li className="popular-article-list-item mb-4">
                                <h4 className="popular-article-title mb-4"><a href="#">Article 4</a></h4>
                                <p className="popular-article-short-desc">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit....
                                </p>
                            </li>
                            <li className="popular-article-list-item mb-4">
                                <h4 className="popular-article-title mb-4"><a href="#">Article 5</a></h4>
                                <p className="popular-article-short-desc">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit....
                                </p>
                            </li>
                        </ul>

                    </div>

                    <div className="aside-ads-banner my-4">
                        <a href="#">
                            <img src="/assets/img/banner/banner-2.svg" alt="Advertising Banner" className="ads-banner-image w-full" />
                        </a>
                    </div>

                    <div className="aside-blog-categories mb-4">

                        <h4 className="mb-4 p-4 text-center border-b border-slate-700">Blog Categories</h4>

                        <ul className="blog-categories-list">
                            <li className="blog-categories-list-item mb-4">
                                <a href="#" className="flex justify-between">Blog Category 1 <span>30 Posts</span></a>
                            </li>
                            <li className="blog-categories-list-item mb-4">
                                <a href="#" className="flex justify-between">Blog Category 2 <span>30 Posts</span></a>
                            </li>
                            <li className="blog-categories-list-item mb-4">
                                <a href="#" className="flex justify-between">Blog Category 3 <span>30 Posts</span></a>
                            </li>
                            <li className="blog-categories-list-item mb-4">
                                <a href="#" className="flex justify-between">Blog Category 4 <span>30 Posts</span></a>
                            </li>
                            <li className="blog-categories-list-item mb-4">
                                <a href="#" className="flex justify-between">Blog Category 5 <span>30 Posts</span></a>
                            </li>
                        </ul>

                    </div>

                    <div className="aside-archive mb-4">

                        <h4 className="mb-4 p-4 text-center border-b border-slate-700">Archives</h4>

                        <ul className="archive-list">
                            <li className="archive-list-item mb-4">
                                <a href="#">September 2023</a>
                            </li>
                            <li className="archive-list-item mb-4">
                                <a href="#">Oktober 2023</a>
                            </li>
                            <li className="archive-list-item mb-4">
                                <a href="#">November 2023</a>
                            </li>
                            <li className="archive-list-item mb-4">
                                <a href="#">Desember 2023</a>
                            </li>
                            <li className="archive-list-item mb-4">
                                <a href="#">Januari 2024</a>
                            </li>
                        </ul>

                    </div>

                    <div className="aside-cta-banner my-4">
                        <a href="#">
                            <img src="/assets/img/banner/banner-1.svg" alt="CTA Banner" className="cta-banner-image" />
                        </a>
                    </div>

                    <div className="aside-tag mb-4">

                        <h4 className="mb-4 p-4 text-center border-b border-slate-700">Tags</h4>

                        <ul className="tag-list grid grid-cols-1 grid-rows-1 md:grid-cols-2 gap-6">
                            <li className="tag-list-item p-4 text-center border border-sky-400">
                                <a href="#">Science</a>
                            </li>
                            <li className="tag-list-item p-4 text-center border border-sky-400">
                                <a href="#">Tech</a>
                            </li>
                            <li className="tag-list-item p-4 text-center border border-sky-400">
                                <a href="#">News</a>
                            </li>
                            <li className="tag-list-item p-4 text-center border border-sky-400">
                                <a href="#">Health</a>
                            </li>
                            <li className="tag-list-item p-4 text-center border border-sky-400">
                                <a href="#">Lifestyle</a>
                            </li>
                        </ul>

                    </div>

                </aside>
            </div>
        </article>
    )
}

export default ArticleSection