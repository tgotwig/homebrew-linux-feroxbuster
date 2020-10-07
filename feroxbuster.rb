class Feroxbuster < Formula
  desc "Fast, simple, recursive content discovery tool written in Rust. 🦀"
  homepage "https://github.com/epi052/feroxbuster"
  url "https://github.com/TGotwig/feroxbuster/releases/download/v1.0.1/feroxbuster-linux.tar.gz"
  sha256 "8acc5cb94d6e6271345192a9d3033114783df9c418dc0a1a524f1e2cd76f9bf9"

  def install
    bin.install "feroxbuster"
  end

  test do
    assert true
  end
end
