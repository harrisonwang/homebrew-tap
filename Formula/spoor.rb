class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.16/spoor_v0.8.16_aarch64-apple-darwin.tar.gz"
      sha256 "6f483278ea6d892823e5fe788f43b8b13d5cba2310dc5f55f2839b42bf921e30"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.16/spoor_v0.8.16_x86_64-apple-darwin.tar.gz"
      sha256 "420175802228ed80b585041b59c25546e7a8885b367b53e864fb389e854fecc0"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.16/spoor_v0.8.16_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "219d091bee6534f69eb932d471ee6d4e7fbe789532fe9bf8227c4d6e540cd0c7"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
