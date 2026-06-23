class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.17/spoor_v0.8.17_aarch64-apple-darwin.tar.gz"
      sha256 "23a6e99d4d9b7a73cc14979349365d875628ede8ef414b147ea4f6f393769dda"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.17/spoor_v0.8.17_x86_64-apple-darwin.tar.gz"
      sha256 "715b802eb09602afa3dab198611b76da447d10ef1852a0357632551a2f11b20e"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.17/spoor_v0.8.17_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e404dd760d66c15d0608ed9c5837c825835e75d28f3e0dd5bc38a287d43267b"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
