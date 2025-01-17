import Image from "next/image"

const ToptipSection: React.FC = () => {
    return (
        <section className="w-full p-4" id="blog">
            <div className="section-container w-full flex flex-col justify-around item-center gap-6">
                <div className="section-head">
                    <h1 className="text-2xl">Zifi - GameHQ | Blog</h1>
                </div>
                <div className="section-body">
                    <div className="blog-option-panel grid grid-cols-2 gap-6">
                        <select className="p-4 rounded" name="blog-sort-by" id="blog-sort-by-option">
                            <option value="latest">Latest</option>
                        </select>
                        <select className="p-4 rounded" name="blog-articles-by-categories" id="blog-articles-by-categories-option">
                            <option value="tips&tricks">Tips And Tricks</option>
                        </select>
                    </div>
                    <div className="blog-container">
                        <ul className="mt-6 py-4 grid grid-rows-1 grid-cols-1 md:grid-cols-2 justify-evenly item-center gap-6" id="blog-articles">
                            <li className="flex justify-center items-center">
                                <a href="/blog/article">
                                    <div className="blog-hypercard border border-sky-400/40 hover:border-sky-600 rounded-lg relative flex flex-col justify-between overflow-hidden">
                                        <div className="blog-hypercard-head relative overflow-hidden min-h-64">
                                            <Image src="/assets/img/view-illuminated-neon-gaming-keyboard-setup-controller.jpg" alt="Article 1" fill style={{ objectFit: 'cover', aspectRatio: '16 / 9' }} />
                                        </div>
                                        <div className="blog-hypercard-body p-4 flex flex-col justify-between gap-6">
                                            <div className="blog-info flex justify-between gap-6">
                                                <div className="articles-category">
                                                    <button className="bg-sky-700 p-2 rounded-md">Tips & Tricks</button>
                                                </div>
                                                <p className="publish-date text-sky-400">04 Sept 2024</p>
                                            </div>
                                            <div className="blog-meta flex flex-col justify-between gap-6">
                                                <h2 className="blog-title text-xl">Title</h2>
                                                <p className="blog-short-description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, enim.</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li className="flex justify-center items-center">
                                <a href="/blog/article">
                                    <div className="blog-hypercard border border-sky-400/40 hover:border-sky-600 rounded-lg relative flex flex-col justify-between overflow-hidden ">
                                        <div className="blog-hypercard-head relative overflow-hidden min-h-64">
                                            <Image src="/assets/img/view-illuminated-neon-gaming-keyboard-setup-controller.jpg" alt="Article 1" fill style={{ objectFit: 'cover', aspectRatio: '16 / 9' }} />
                                        </div>
                                        <div className="blog-hypercard-body p-4 flex flex-col justify-between gap-6">
                                            <div className="blog-info flex justify-between gap-6">
                                                <div className="articles-category">
                                                    <button className="bg-sky-700 p-2 rounded-md">Tips & Tricks</button>
                                                </div>
                                                <p className="publish-date text-sky-400">04 Sept 2024</p>
                                            </div>
                                            <div className="blog-meta flex flex-col justify-between gap-6">
                                                <h2 className="blog-title text-xl">Title</h2>
                                                <p className="blog-short-description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, enim.</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li className="flex justify-center items-center">
                                <a href="/blog/article">
                                    <div className="blog-hypercard border border-sky-400/40 hover:border-sky-600 rounded-lg relative flex flex-col justify-between overflow-hidden ">
                                        <div className="blog-hypercard-head relative overflow-hidden min-h-64">
                                            <Image src="/assets/img/view-illuminated-neon-gaming-keyboard-setup-controller.jpg" alt="Article 1" fill style={{ objectFit: 'cover', aspectRatio: '16 / 9' }} />
                                        </div>
                                        <div className="blog-hypercard-body p-4 flex flex-col justify-between gap-6">
                                            <div className="blog-info flex justify-between gap-6">
                                                <div className="articles-category">
                                                    <button className="bg-sky-700 p-2 rounded-md">Tips & Tricks</button>
                                                </div>
                                                <p className="publish-date text-sky-400">04 Sept 2024</p>
                                            </div>
                                            <div className="blog-meta flex flex-col justify-between gap-6">
                                                <h2 className="blog-title text-xl">Title</h2>
                                                <p className="blog-short-description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, enim.</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li className="flex justify-center items-center">
                                <a href="/blog/article">
                                    <div className="blog-hypercard border border-sky-400/40 hover:border-sky-600 rounded-lg relative flex flex-col justify-between overflow-hidden ">
                                        <div className="blog-hypercard-head relative overflow-hidden min-h-64">
                                            <Image src="/assets/img/view-illuminated-neon-gaming-keyboard-setup-controller.jpg" alt="Article 1" fill style={{ objectFit: 'cover', aspectRatio: '16 / 9' }} />
                                        </div>
                                        <div className="blog-hypercard-body p-4 flex flex-col justify-between gap-6">
                                            <div className="blog-info flex justify-between gap-6">
                                                <div className="articles-category">
                                                    <button className="bg-sky-700 p-2 rounded-md">Tips & Tricks</button>
                                                </div>
                                                <p className="publish-date text-sky-400">04 Sept 2024</p>
                                            </div>
                                            <div className="blog-meta flex flex-col justify-between gap-6">
                                                <h2 className="blog-title text-xl">Title</h2>
                                                <p className="blog-short-description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, enim.</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li className="flex justify-center items-center">
                                <a href="/blog/article">
                                    <div className="blog-hypercard border border-sky-400/40 hover:border-sky-600 rounded-lg relative flex flex-col justify-between overflow-hidden ">
                                        <div className="blog-hypercard-head relative overflow-hidden min-h-64">
                                            <Image src="/assets/img/view-illuminated-neon-gaming-keyboard-setup-controller.jpg" alt="Article 1" fill style={{ objectFit: 'cover', aspectRatio: '16 / 9' }} />
                                        </div>
                                        <div className="blog-hypercard-body p-4 flex flex-col justify-between gap-6">
                                            <div className="blog-info flex justify-between gap-6">
                                                <div className="articles-category">
                                                    <button className="bg-sky-700 p-2 rounded-md">Tips & Tricks</button>
                                                </div>
                                                <p className="publish-date text-sky-400">04 Sept 2024</p>
                                            </div>
                                            <div className="blog-meta flex flex-col justify-between gap-6">
                                                <h2 className="blog-title text-xl">Title</h2>
                                                <p className="blog-short-description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, enim.</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li className="flex justify-center items-center">
                                <a href="/blog/article">
                                    <div className="blog-hypercard border border-sky-400/40 hover:border-sky-600 rounded-lg relative flex flex-col justify-between overflow-hidden ">
                                        <div className="blog-hypercard-head relative overflow-hidden min-h-64">
                                            <Image src="/assets/img/view-illuminated-neon-gaming-keyboard-setup-controller.jpg" alt="Article 1" fill style={{ objectFit: 'cover', aspectRatio: '16 / 9' }} />
                                        </div>
                                        <div className="blog-hypercard-body p-4 flex flex-col justify-between gap-6">
                                            <div className="blog-info flex justify-between gap-6">
                                                <div className="articles-category">
                                                    <button className="bg-sky-700 p-2 rounded-md">Tips & Tricks</button>
                                                </div>
                                                <p className="publish-date text-sky-400">04 Sept 2024</p>
                                            </div>
                                            <div className="blog-meta flex flex-col justify-between gap-6">
                                                <h2 className="blog-title text-xl">Title</h2>
                                                <p className="blog-short-description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, enim.</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    )
}

export default ToptipSection