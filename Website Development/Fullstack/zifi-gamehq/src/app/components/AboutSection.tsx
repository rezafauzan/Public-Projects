const ToptipSection: React.FC = () => {
    return (
        <section className="w-full p-4" id="about">
            <div className="section-container w-full flex flex-col justify-around item-center gap-6">
                <div className="section-head">
                    <h1 className="text-2xl">Zifi - GameHQ</h1>
                </div>
                <div className="section-body">
                    <table>
                        <tbody className="flex flex-col justify-evenly gap-6">
                            <tr>
                                <td>
                                    <h2>Project Started By: </h2>
                                    <p> <strong>Zifinity Team</strong>,  7 December 2024</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h2>
                                        Article Template:
                                    </h2>
                                    <p>
                                        "Zifiblog Tech theme" by Reza Fauzan A. © 2023
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h2>Copyright: </h2>
                                    <p>
                                        MIT License © 2024 <strong>Zifinity Team</strong>. All Rights Reserved
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h2>Attribution</h2>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h3>Hero Image by: </h3>
                                </td>
                                <td>
                                    <p></p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    )
}

export default ToptipSection