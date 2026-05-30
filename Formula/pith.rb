class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.6.0/pith_v0.6.0_aarch64-apple-darwin.tar.gz"
      sha256 "56884764cf1cb9ac319a22cd60088fb2eaffb097f190f1c0992bfbf6768ac0a3"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.6.0/pith_v0.6.0_x86_64-apple-darwin.tar.gz"
      sha256 "029a5bfd9e4b4efc023bdab510b7621b5f48a989254835558403c066e73e3a21"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.6.0/pith_v0.6.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4deb8a4f8f18cf1de585b614d50f8b1b36d9712071ed9d396f771572a074e76c"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
