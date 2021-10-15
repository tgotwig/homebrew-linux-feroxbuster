# frozen_string_literal: true

class Feroxbuster < Formula
  desc 'Fast, simple, recursive content discovery tool written in Rust. 🦀'
  homepage 'https://github.com/epi052/feroxbuster'
  url 'https://github.com/epi052/feroxbuster/releases/download/v2.4.0/x86_64-linux-feroxbuster.tar.gz'
  sha256 'a1882d669a0b05150d37358837a5d1b4ed70e0cffed280f2cd6e115af5e9a678'

  resource 'ferox-config' do
    url 'https://raw.githubusercontent.com/epi052/feroxbuster/main/ferox-config.toml.example'
    sha256 '14ccee4e0d90da087c7107883698600b8237094f1d49f1e1b42a4d066d4cfa55'
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
