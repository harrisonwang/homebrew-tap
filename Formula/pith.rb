class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.3.0/pith_v0.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "7f42e3d703da2a03a53eb0197e6c349cc35fc0d22e37cd3716db9270d73648d5"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.3.0/pith_v0.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "f40b35facd03f46349ec6b78dd7734224352766f12ecd045a7379c96d3404ff9"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.3.0/pith_v0.3.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3f8f5813175200a8a89cdf58b460efb0830ff5ebb5f80665de8196506f295f0c"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
