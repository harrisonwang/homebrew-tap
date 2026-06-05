class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.5.4/pith_v0.5.4_aarch64-apple-darwin.tar.gz"
      sha256 "2ef3d96ddb1c581822c8a00b18ba21b89d332f3e823ff94822ca7c850d422316"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.5.4/pith_v0.5.4_x86_64-apple-darwin.tar.gz"
      sha256 "7036c6984b01b5739f77376a0d000482673aed568c9206eaba190e4a354e6528"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.5.4/pith_v0.5.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1acb71ce545496dcf737e7ed5cb92c92f441e90d773dc8e0d7d132ac7fba04e4"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
