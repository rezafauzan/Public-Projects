type sectionProps = {
    id: string,
    headContent: string,
    bodyContent: string
}

const Section: React.FC<sectionProps> = ({id, headContent='', bodyContent=''}) => {

    return(
        <section id={id}>
            <div className="container">
                <div className="section-head">{headContent}</div>
                <div className="section-body">{bodyContent}</div>
            </div>
        </section>
    )
}

export default Section