"use client"
import { useEffect, useState } from "react"

const Clock: React.FC = () => {
    const [time, setTime] = useState<Date>(new Date())

    useEffect(() => {
        setInterval(() => {
            setTime(new Date())
        }, 1000);
    })

    let hours = (time.getHours() < 10 ? '0' : '') + (time.getHours() > 12 ? time.getHours() - 12 : time.getHours())
    let minutes = (time.getMinutes() < 10 ? '0' : '') + time.getMinutes()
    let seconds = (time.getSeconds() < 10 ? '0' : '') + time.getSeconds()

    return (
        <div className="clock">
            <p>My country local time ⌚</p>
            <span>{hours}</span>
            <span>:</span>
            <span>{minutes}</span>
            <span>:</span>
            <span>{seconds}</span>
            <span>{(time.getHours() < 12 ? ' AM ' : ' PM ')}</span>
        </div>
    )
}

export default Clock
