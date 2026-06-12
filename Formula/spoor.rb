class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.2/spoor_v0.8.2_aarch64-apple-darwin.tar.gz"
      sha256 "77f335145b01e12d87e250c7ef08dd7100fb7f99c5091f3e08350e3439dfd31b"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.2/spoor_v0.8.2_x86_64-apple-darwin.tar.gz"
      sha256 "8ce4c992163cb3a960d33fd9211bfe2e0891b221fdff9b01c6eb2f8871006fd9"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.2/spoor_v0.8.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c595aa3d62b8891f93c202c48886da9a2394728ff8f942a661ee576f3108a743"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
