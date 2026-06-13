class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.5/spoor_v0.8.5_aarch64-apple-darwin.tar.gz"
      sha256 "1a03fc2770922df94bdad0585c6924fe8665b367259afa38d66fa0b1c6ebbca2"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.5/spoor_v0.8.5_x86_64-apple-darwin.tar.gz"
      sha256 "040258d2e390599ef66362d4918f0b44eb74fccd8739b7f1a531759931292747"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.5/spoor_v0.8.5_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d3b3763ff5c956922c7eba01fbb0cbc1d8d065b631e3775ee23f926d49ac7097"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
