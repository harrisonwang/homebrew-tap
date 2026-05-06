class Mingest < Formula
  desc "Local video archiving CLI powered by yt-dlp and ffmpeg"
  homepage "https://github.com/harrisonwang/mingest"
  version "0.4.1"
  license "AGPL-3.0-only"

  depends_on "yt-dlp"
  depends_on "ffmpeg"
  depends_on "deno"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/mingest/releases/download/v0.4.1/media-ingest_v0.4.1_darwin_arm64_slim.tar.gz"
      sha256 "c516aab3c6f06cda70382692ef8a31acef9a621a1fb7bfca7917234dbc63e8d2"
    end

    on_intel do
      url "https://github.com/harrisonwang/mingest/releases/download/v0.4.1/media-ingest_v0.4.1_darwin_amd64_slim.tar.gz"
      sha256 "29323a34a6ccc47f6ed411e7cd73e7c603fe0e8e8f95f5b7b105be385cdde7b0"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/mingest/releases/download/v0.4.1/media-ingest_v0.4.1_linux_amd64_slim.tar.gz"
    sha256 "b6ef1dd936d91861657fe64e3a129beefec838d7f3e1459d5b94d8411f4b970c"
  end

  def install
    bin.install "mingest"
  end

  test do
    output = shell_output("#{bin}/mingest --version")
    assert_match "mingest", output
  end
end
