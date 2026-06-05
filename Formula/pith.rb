class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.6.2/pith_v0.6.2_aarch64-apple-darwin.tar.gz"
      sha256 "f6ef11d14d6fc7cd541fd06cac5d88cb006ef68044f5f97ea6a791da9c9164ff"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.6.2/pith_v0.6.2_x86_64-apple-darwin.tar.gz"
      sha256 "1dc4ae3c1eb379e96b32fefc7c78c41a695bc7b36f0f0c4eaaf38de36017141e"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.6.2/pith_v0.6.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0f8556c01d0c51107954f802d11b6b03b4eb0bc96da3603003d9eb5b19a45ca8"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
