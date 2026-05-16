class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.5.1/pith_v0.5.1_aarch64-apple-darwin.tar.gz"
      sha256 "dc16a69beab43ccda8f55f0ed4f461fbfa5ffa1390a7ed5b38fac6d15aede0ec"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.5.1/pith_v0.5.1_x86_64-apple-darwin.tar.gz"
      sha256 "321b56a034c99adddf4ff1decf4ba92832b6491d2e2c74667b43c702f3238844"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.5.1/pith_v0.5.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "af5ec20bbecfe73d630d07d779f6408a1b8c1bcc086791f451552b3970943b17"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
