class Dovahkiin < Formula
  desc "A cowsay-like CLI that shouts Skyrim quotes from Alduin"
  homepage "https://spacehole.tech"
  url "https://github.com/mrsandv/dovahkiin-say/releases/download/v0.1.2/dovahkiin-macos.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  def install
    bin.install "dovahkiin"
    man1.install "dovahkiin.1"
  end

  test do
    system "#{bin}/dovahkiin", "--version"
  end
end
