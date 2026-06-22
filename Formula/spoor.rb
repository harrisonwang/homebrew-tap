class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.12/spoor_v0.8.12_aarch64-apple-darwin.tar.gz"
      sha256 "0f0064e8cd7887f87aa3e37f87d5f1d4fa2d72be5405db95f6ae8fe743071730"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.12/spoor_v0.8.12_x86_64-apple-darwin.tar.gz"
      sha256 "096b091a9c232ba4c1672f64b4320cb021dee0f18eed80ff24374517373a0c20"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.12/spoor_v0.8.12_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a99e2e54618d26d71635fbd85a7d050d5078ed0b934483d4d607dab507355c36"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
