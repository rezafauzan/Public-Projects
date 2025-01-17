'use client'
import Image from "next/image"

const HeroSection: React.FC = () => {
    return (
        <section className="w-full py-4" id="hero" style={{ height: '640px' }}>
            <div className="w-full h-full overflow-clip relative">
                <Image src={"/assets/img/farrel-rtx-on-5.jpg"} alt="Hero Image" width={1900} height={1080} style={{ width: '100%', objectFit: 'cover', position: 'absolute', top: '-100px', zIndex: '1' }} />
                <div className="overlay w-full h-full absolute z-10 flex flex-col justify-center item-center gap-6 text-center backdrop-blur-sm" style={{ background: 'rgba( 0, 0, 0, 0.5 )' }}>
                    <h1 className="text-4xl mb-9">Zifi - Game Headquarter</h1>
                    <div className="w-full mt-10 flex justify-evenly item-center">
                        <h2 className="text-lg md:text-xl lg:text-2xl">Tips & Trick</h2>
                        <h2 className="text-lg md:text-xl lg:text-2xl">Games News</h2>
                        <h2 className="text-lg md:text-xl lg:text-2xl">Freebies</h2>
                        <h2 className="text-lg md:text-xl lg:text-2xl">Tools</h2>
                    </div>
                </div>
            </div>
        </section>
    )
}

export default HeroSection