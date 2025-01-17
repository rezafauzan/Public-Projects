import PageWrapper from "@/app/components/PageWrapper"
import Header from "@/app/components/Header"
import Footer from "@/app/components/Footer"
import ArticleSection from "@/app/components/ArticleSection"

export default function Home() {
    return (
        <PageWrapper>
            <Header />
            <main className="flex flex-col justify-evenly item-center gap-6">
                <ArticleSection />
            </main>
            <Footer />
        </PageWrapper>
    )
}