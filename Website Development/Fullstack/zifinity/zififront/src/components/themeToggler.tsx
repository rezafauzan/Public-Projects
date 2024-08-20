'use client'
import { useState } from "react"

const ThemeToggler: React.FC = () => {
    const [themeState, setTheme] = useState('dark')

    function toggleTheme(){
        setTheme( (themeState === 'dark' ? 'light' : 'dark') )
    }

    return (
        <div className="theme-toggler">
            <input type="range" value={(themeState === 'dark' ? 1 : 0)} max={1} onClick={toggleTheme} className={"theme-slider " + (themeState === 'dark' ? 'dark' : '')}/>
        </div>
    )
}

export default ThemeToggler