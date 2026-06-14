class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.6/spoor_v0.8.6_aarch64-apple-darwin.tar.gz"
      sha256 "25de77118d64dd59c63cb21c8b2db484182d71be21b3c1087604373b1a731d9f"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.6/spoor_v0.8.6_x86_64-apple-darwin.tar.gz"
      sha256 "0c4cb9403f1fd9935973c8bafddc3560436ff73fa6e259819f3b174dd3211ce6"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.6/spoor_v0.8.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3e9dd5948fcd012b6ca66af94fb9774bfd92b9f59fe044c3f9123ad83c01db3b"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
