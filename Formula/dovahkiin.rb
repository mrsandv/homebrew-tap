class Dovahkiin < Formula
  desc "A cowsay-like CLI that shouts Skyrim quotes from Alduin"
  homepage "https://spacehole.tech"
  url "https://github.com/mrsandv/dovahkiin-say/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "de9531caa732997cf0aecdb23d3823d431c428813e3bdf080e1626160d2c2a3b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    man1.install "dovahkiin.1"
  end

  test do
    system "#{bin}/dovahkiin", "--version"
  end
end
