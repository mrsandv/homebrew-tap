class Dovahkiin < Formula
  desc "A cowsay-like CLI that shouts Skyrim quotes from Alduin"
  homepage "https://spacehole.tech"
  url "https://github.com/mrsandv/dovahkiin-say/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
