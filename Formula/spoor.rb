class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.12.0/spoor_v0.12.0_aarch64-apple-darwin.tar.gz"
      sha256 "181d64a2702a9b576105ce42c06d6d7c1130d523b61544930384ed6a1c069091"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.12.0/spoor_v0.12.0_x86_64-apple-darwin.tar.gz"
      sha256 "513cfb6b5ef45befc7955a07d04733578f57f1f5379c0b70f2b6c2f01ea8684a"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.12.0/spoor_v0.12.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "534d91262ad846188c87ff593103bc9d61451d5c67a2144acb50e8c7bc6649a9"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
