class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.6/spoor_v0.8.6_aarch64-apple-darwin.tar.gz"
      sha256 "1867d205032248058a89772ee8d3af7195f63e52c73bf34c07f736b6fe82b992"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.6/spoor_v0.8.6_x86_64-apple-darwin.tar.gz"
      sha256 "2bd96ca3c0ae41de7017b0281d922ebdfb284c2d04f61cc61b0656845d6883f6"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.6/spoor_v0.8.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6d1edb5f56e837dbba68c82a7d127c6f54bcf9a7e2721d0d8a01e09a0779c459"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
