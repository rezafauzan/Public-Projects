import type { Metadata } from "next"
import "./globals.css"

export const metadata: Metadata = {
  title: "Zifi - GameHQ",
  description: "Markasnya para pemain",
};

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode; }>) {
  return (
    <html lang="en">
      <body>
        {children}
      </body>
    </html>
  );
}
