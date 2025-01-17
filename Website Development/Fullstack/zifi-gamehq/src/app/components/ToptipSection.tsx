import Image from "next/image"

const ToptipSection: React.FC = () => {
    return (
        <section className="w-full p-4" id="top-tips">
            <div className="section-container w-full flex flex-col justify-around item-center gap-6">
                <div className="section-head">
                    <h2 className="text-4xl">Top Tips And Trick</h2>
                </div>
                <div className="section-body">
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
                    </ul>
                    {/* <ul className="grid grid-cols-1 grid-rows-1 md:grid-cols-2 lg:grid-cols-4 justify-evenly item-center gap-6" id="toptips">
                        <li className="flex justify-center item-center">
                            <div className="hypercard border border-sky-400/40 hover:border-sky-600 rounded-lg relative overflow-hidden " style={{ height: '100vh', minHeight: '240px', maxHeight: '480px', aspectRatio: '2/3' }}>
                                <a href="#">
                                    <Image src="/assets/img/view-illuminated-neon-gaming-keyboard-setup-controller.jpg" alt="Article 1" fill style={{ objectFit: 'cover' }} />
                                    <div className="overlay opacity-100 lg:opacity-0 hover:opacity-100 absolute top-0 bottom-0 right-0 left-0" style={{ background: 'rgba( 0, 0, 0, 0.4 )' }}>
                                        <h4 className="absolute bottom-4 left-4 right-0 text-xl">Title</h4>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li className="flex justify-center item-center">
                            <div className="hypercard border border-sky-400/40 hover:border-sky-600 rounded-lg relative overflow-hidden " style={{ height: '100vh', minHeight: '240px', maxHeight: '480px', aspectRatio: '2/3' }}>
                                <a href="#">
                                    <Image src="/assets/img/view-illuminated-neon-gaming-keyboard-setup-controller.jpg" alt="Article 1" fill style={{ objectFit: 'cover' }} />
                                    <div className="overlay opacity-100 lg:opacity-0 hover:opacity-100 absolute top-0 bottom-0 right-0 left-0" style={{ background: 'rgba( 0, 0, 0, 0.4 )' }}>
                                        <h4 className="absolute bottom-4 left-4 right-0 text-xl">Title</h4>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li className="flex justify-center item-center">
                            <div className="hypercard border border-sky-400/40 hover:border-sky-600 rounded-lg relative overflow-hidden " style={{ height: '100vh', minHeight: '240px', maxHeight: '480px', aspectRatio: '2/3' }}>
                                <a href="#">
                                    <Image src="/assets/img/view-illuminated-neon-gaming-keyboard-setup-controller.jpg" alt="Article 1" fill style={{ objectFit: 'cover' }} />
                                    <div className="overlay opacity-100 lg:opacity-0 hover:opacity-100 absolute top-0 bottom-0 right-0 left-0" style={{ background: 'rgba( 0, 0, 0, 0.4 )' }}>
                                        <h4 className="absolute bottom-4 left-4 right-0 text-xl">Title</h4>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li className="flex justify-center item-center">
                            <div className="hypercard border border-sky-400/40 hover:border-sky-600 rounded-lg relative overflow-hidden " style={{ height: '100vh', minHeight: '240px', maxHeight: '480px', aspectRatio: '2/3' }}>
                                <a href="#">
                                    <Image src="/assets/img/view-illuminated-neon-gaming-keyboard-setup-controller.jpg" alt="Article 1" fill style={{ objectFit: 'cover' }} />
                                    <div className="overlay opacity-100 lg:opacity-0 hover:opacity-100 absolute top-0 bottom-0 right-0 left-0" style={{ background: 'rgba( 0, 0, 0, 0.4 )' }}>
                                        <h4 className="absolute bottom-4 left-4 right-0 text-xl">Title</h4>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul> */}
                </div>
            </div>
        </section>
    )
}

export default ToptipSection