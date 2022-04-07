# frozen_string_literal: true

class Feroxbuster < Formula
  desc 'Fast, simple, recursive content discovery tool written in Rust. 🦀'
  homepage 'https://github.com/epi052/feroxbuster'
  url 'https://github.com/epi052/feroxbuster/releases/download/v2.6.2/x86_64-linux-feroxbuster.tar.gz'
  sha256 '46c3f68d4254f19e194943f1892b7d3e6f53dee66977052bd2dd9abe6e8daa30'

  resource 'ferox-config' do
    url 'https://raw.githubusercontent.com/epi052/feroxbuster/main/ferox-config.toml.example'
    sha256 '2abef482d8a79d6b2d5deab5611abc3547f43f67ab6d3c9ab5cd0076fb6a5d62'
  end

  def install
    config = "#{bin}/ferox-config.toml"
    example = "#{bin}/ferox-config.toml.example"

    bin.install 'feroxbuster'

    resource('ferox-config').stage {
      bin.install resource('ferox-config')
      system 'cp', '-n', example, config
    }
  end

  test do
    assert true
  end
end
