class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.9.1/spoor_v0.9.1_aarch64-apple-darwin.tar.gz"
      sha256 "3f71cc6e7be7eb558b23759f0ef5044274ed6207b9ab3b81180793e9fa9c2f46"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.9.1/spoor_v0.9.1_x86_64-apple-darwin.tar.gz"
      sha256 "1818eb8c1f5b75831e3ddcf3627b28c7deb410d90a71567cb32c2f8f8ec6b3b6"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.9.1/spoor_v0.9.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1b2ccf0c8041d95c39e4e91d32a2415bcc35f35f19baf6f7f8338b536c65b798"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
