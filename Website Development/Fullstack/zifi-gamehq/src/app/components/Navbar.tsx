'use client'
import { useState } from "react"
import Link from "next/link"

const Navbar: React.FC = () => {
    const [isShow, setIsShow] = useState(false)

    return (
        <nav className={`max-w-full p-4 relative top-0 right-0 left-0 z-40 border-b border-sky-600/40 flex justify-between items-center backdrop-blur`}>
            <div className="brand text-2xl">
                <Link href="/"><h2>Zifi - GameHQ</h2></Link>
            </div>
            <ul className={`${isShow ? "bg-sky-950 w-1/4 m-2 p-4 fixed top-0 right-0 z-40 rounded flex" : "hidden"} md:bg-transparent md:m-0 md:p-0 md:static md:flex flex-col md:flex-row md:justify-center md:items-center gap-6`}>
                <li className="md:hidden absolute top-2 right-4">
                    <button onClick={() => setIsShow(!isShow)}>
                        <svg viewBox="0 0 10 10" className="w-2.5 h-2.5 overflow-visible" aria-hidden="true"><path d="M0 0L10 10M10 0L0 10" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round"></path></svg>
                    </button>
                </li>
                <li>
                    <Link className="hover:text-sky-400" href="/">Home</Link>
                </li>
                <li>
                    <Link className="hover:text-sky-400" href="/about">About</Link>
                </li>
                <li>
                    <Link className="hover:text-sky-400" href="/blog">Blog</Link>
                </li>
                <li>
                    <Link className="hover:text-sky-400" href="#">Games</Link>
                </li>
            </ul>
            <div className="nav-toggler md:hidden">
                <button onClick={() => setIsShow(!isShow)}>☰</button>
            </div>
            <div className="cta hidden md:block"><Link href="" className="bg-sky-400 hover:bg-sky-600 px-4 py-2 rounded-lg shadow-sky-400">Join Us!</Link></div>
        </nav>
    )
}

export default Navbar