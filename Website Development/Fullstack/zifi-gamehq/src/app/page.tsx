import Header from "./components/Header";
import HeroSection from "./components/HeroSection";
import ToptipSection from "./components/ToptipSection";
import PageWrapper from "./components/PageWrapper";
import LatestnewsSection from "./components/LatestnewsSection";
import CooltoolSection from "./components/CooltoolSection";
import Footer from "./components/Footer";

export default function Home() {
  return (
    <PageWrapper>
      <Header />
      <main className="flex flex-col justify-evenly item-center gap-6">
        <HeroSection />
        <ToptipSection />
        <LatestnewsSection />
        <CooltoolSection />
      </main>
      <Footer />
    </PageWrapper>
  );
}
