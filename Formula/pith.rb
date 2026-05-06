class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.3.0/pith_v0.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "28e1ab5be8c5ddeaa79256a8711994a7bd5be48c9ac84e9195e25c2a85250e0c"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.3.0/pith_v0.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "b219378a97f29afa6fddf60f85c113ca634a74882243b7a148b637a2a6ec97ba"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.3.0/pith_v0.3.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "243c455a2b4fb6fd493f70064e72a265ed78383243bbd9683ba74d6d6dee911e"
  end

  def install
    bin.install "pith/pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
