import Link from "next/link"

const Footer: React.FC = () => {
    return (
        <footer>
            <nav className="p-4 border-t border-sky-600/40 flex flex-col md:flex-row justify-between items-center gap-6">
                <div className="copyright">
                    <h4>
                        Copyright MIT License © 2024 Reza Fauzan Adhima & Infinity Team. All Rights Reserved
                    </h4>
                </div>

                <ul className="flex flex-col md:flex-row justify-between items-center gap-6">
                    <li>
                        <Link className="hover:text-sky-400" href="#">Terms & Co.</Link>
                    </li>

                    <li>
                        <Link className="hover:text-sky-400" href="#">Contact</Link>
                    </li>
                </ul>
            </nav>
        </footer>
    )
}

export default Footer