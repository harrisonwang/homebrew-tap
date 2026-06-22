class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.13/spoor_v0.8.13_aarch64-apple-darwin.tar.gz"
      sha256 "eac4ef0a0631ebbd881b52909e1ef37f3ed1775c141c7e96807a92fb18bd27e8"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.13/spoor_v0.8.13_x86_64-apple-darwin.tar.gz"
      sha256 "1bf6143364f5a96105e94e5d0da6c4ca1e33d20bde6bfe431ed93275b3c0f3e0"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.13/spoor_v0.8.13_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "690f7c1153f2c24c60cb7204fdc52234b6bcb640679eccd0ab4de7490fd0fcc9"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
