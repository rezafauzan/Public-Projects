import PageWrapper from "../components/PageWrapper";
import Header from "../components/Header";
import AboutSection from "../components/AboutSection";
import Footer from "../components/Footer";

export default function Home() {
  return (
    <PageWrapper>
      <Header />
      <main className="flex flex-col justify-evenly item-center gap-6">
        <AboutSection />
      </main>
      <Footer />
    </PageWrapper>
  );
}
