class Mingest < Formula
  desc "Local video archiving CLI powered by yt-dlp and ffmpeg"
  homepage "https://github.com/harrisonwang/mingest"
  version "0.5.0"
  license "AGPL-3.0-only"

  depends_on "yt-dlp"
  depends_on "ffmpeg"
  depends_on "deno"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/mingest/releases/download/v0.5.0/mingest_v0.5.0_darwin_arm64_slim.tar.gz"
      sha256 "4632b42c28d45f45c582de5459387cdcc7f2cafd7c517fbf984fc8cf303ba0bd"
    end

    on_intel do
      url "https://github.com/harrisonwang/mingest/releases/download/v0.5.0/mingest_v0.5.0_darwin_amd64_slim.tar.gz"
      sha256 "00053de8fbd56cf2fe04e944c0a14809b5d3cd0f379c3ee4a1c805e4e215cdf9"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/mingest/releases/download/v0.5.0/mingest_v0.5.0_linux_amd64_slim.tar.gz"
    sha256 "a71c0f30be4a724671e43164a952a72a86a03cf4f3f8e62d80ae79adaf63a859"
  end

  def install
    bin.install "mingest"
  end

  test do
    output = shell_output("#{bin}/mingest --version")
    assert_match "mingest", output
  end
end
