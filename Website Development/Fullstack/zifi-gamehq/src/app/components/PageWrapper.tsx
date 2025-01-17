type PageWrapperProps = {
    children: React.ReactNode
}

const PageWrapper: React.FC<PageWrapperProps> = ({children}) => {
    return (
        <div className="xl:container xl:mx-auto shadow shadow-sky-400 rounded-b">{children}</div>
    )
}

export default PageWrapper