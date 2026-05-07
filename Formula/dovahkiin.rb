class Dovahkiin < Formula
  desc "A cowsay-like CLI that shouts Skyrim quotes from Alduin"
  homepage "https://spacehole.tech"
  url "https://github.com/mrsandv/dovahkiin-say/releases/download/v0.1.3/dovahkiin-macos.tar.gz"
  sha256 "7d76042d347b2dbc4f7a08253b1663bd44be1c7dcbe18108aa5b72de9946cf34"
  license "MIT"

  def install
    bin.install "dovahkiin"
    man1.install "dovahkiin.1"
  end

  test do
    system "#{bin}/dovahkiin", "--version"
  end
end
