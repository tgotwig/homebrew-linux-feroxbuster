class Feroxbuster < Formula
  desc "Fast, simple, recursive content discovery tool written in Rust. 🦀"
  homepage "https://github.com/epi052/feroxbuster"
  url "https://github.com/TGotwig/feroxbuster/releases/download/v1.0.3/x86_64-linux-feroxbuster.tar.gz"
  sha256 "7d75d16e45058ec0a0aed6da145204389b98ea515b8db95d9e4d099cfc9f9ba4"

  def install
    bin.install "feroxbuster"
  end

  test do
    assert true
  end
end
