# frozen_string_literal: true

class Feroxbuster < Formula
  desc 'Fast, simple, recursive content discovery tool written in Rust. 🦀'
  homepage 'https://github.com/epi052/feroxbuster'
  url 'https://github.com/epi052/feroxbuster/releases/download/v2.8.0/x86_64-linux-feroxbuster.tar.gz'
  sha256 'cb3fc38ab3e029ddbafe5c00b46a7831ed3c6dbff2a006beaa66a1345c0af104'

  resource 'ferox-config' do
    url 'https://raw.githubusercontent.com/epi052/feroxbuster/main/ferox-config.toml.example'
    sha256 '8938f69df04cbd7a4086cae75a885f16b1f2b8bb278cf4f8a82c0d94138a87a0'
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
