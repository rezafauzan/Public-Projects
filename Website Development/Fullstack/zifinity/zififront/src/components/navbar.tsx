'use client'
import { useState } from "react"

const Navbar: React.FC = () => {
    const [navbarState, setNavbarState] = useState(false)

    const NavbarToggler: React.FC = () => {
        function toggleNavbar(){
            setNavbarState( navbarState=> !navbarState )
        }

        return (
            <div className="navbar-toggler" onClick={toggleNavbar}>
                <span></span>
                <span></span>
                <span></span>
            </div>
        )
    }

    return (
        <nav>
            <div className="brand">
                <a href="#" className="brand-link">Zigzag's Infinity Team ∞</a>
            </div>

            <ul role="list" className={"nav-list " + (navbarState ? 'show' : '')}>
                <li className="nav-list-item"><a href="#" className="nav-link active">Product</a></li>
                <li className="nav-list-item"><a href="#" className="nav-link">Portfolio</a></li>
                <li className="nav-list-item"><a href="#" className="nav-link">Services</a></li>
                <li className="nav-list-item"><a href="#" className="nav-link">About</a></li>
                <li className="nav-list-item"><a href="#" className="nav-link">Contact</a></li>
            </ul>

            <div className="cta">
                <a href="#" className="cta-button">Call To Action</a>
            </div>

            <NavbarToggler />

        </nav>
    )
}

export default Navbar