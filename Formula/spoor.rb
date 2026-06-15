class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.7/spoor_v0.8.7_aarch64-apple-darwin.tar.gz"
      sha256 "0828d1e7a352f9b71e3d5b255fead33be7f0e3fa9a30d2338a3aa18118b47f6b"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.7/spoor_v0.8.7_x86_64-apple-darwin.tar.gz"
      sha256 "bf146d6ccfffd9cec74d9722d9c8f12c39fb32549578c07371723ba2070a52b0"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.7/spoor_v0.8.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0e340610b43c6d88b939ca6bd6d8557c72ac16d7473badb9194a408f5ac5ad0b"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
