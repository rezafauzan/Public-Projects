import Clock from "@/components/clock"
import ThemeToggler from "./themeToggler"

const Utility: React.FC = () => {
  return (
    <div className="utility">
      <Clock />
      <ThemeToggler />
    </div>
  )
}

export default Utility
