# frozen_string_literal: true

class Feroxbuster < Formula
  desc 'Fast, simple, recursive content discovery tool written in Rust. 🦀'
  homepage 'https://github.com/epi052/feroxbuster'
  url 'https://github.com/epi052/feroxbuster/releases/download/v2.6.3/x86_64-linux-feroxbuster.tar.gz'
  sha256 '110e4b4673b01a2496ab3313d786772c2577fd8d2923b2c8e0040f7a576f8a22'

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
