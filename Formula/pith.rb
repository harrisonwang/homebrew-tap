class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.6.0/pith_v0.6.0_aarch64-apple-darwin.tar.gz"
      sha256 "1dae11b79124f9de9dff176442f9c4940cb80e7d92ba5546cad39768c9309197"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.6.0/pith_v0.6.0_x86_64-apple-darwin.tar.gz"
      sha256 "a81990bf03be8c8988753a747a12313c229d719eff4f6d0c3ee0372b136fb5e1"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.6.0/pith_v0.6.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ea067facb32f2c9934771ebc741acbef3579729282dfe705ed35bf6617139298"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
