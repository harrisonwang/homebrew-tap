class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.20/spoor_v0.8.20_aarch64-apple-darwin.tar.gz"
      sha256 "d4fa1b41bfe2feb767c424c6b72895179d75da7156d023aee493e589edf6ea33"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.20/spoor_v0.8.20_x86_64-apple-darwin.tar.gz"
      sha256 "e65beb31d97b81e65c78e9888a9bdcadf606519dd7b36b781384ca97f6be8047"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.20/spoor_v0.8.20_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a481272ef450602069055edd141d81ba4c990166abf9dcc950cb76b03d821e93"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
