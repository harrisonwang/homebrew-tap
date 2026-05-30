class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.6.1/pith_v0.6.1_aarch64-apple-darwin.tar.gz"
      sha256 "2dcd9aa443fd5b76bfafa5c10417adffdef7e092cbf58feea5a93b2a0f3865cc"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.6.1/pith_v0.6.1_x86_64-apple-darwin.tar.gz"
      sha256 "5d44bd1d709501059960a033ddc005e2b0c5c6e4825ad1de04aacaa052871a17"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.6.1/pith_v0.6.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "14430e142a91eeb303f2f6100ca99048804c5ecd8112f1643ddd04749d1cfd90"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
