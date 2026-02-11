class Mingest < Formula
  desc "Local video archiving CLI powered by yt-dlp and ffmpeg"
  homepage "https://github.com/harrisonwang/media-ingest"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harrisonwang/media-ingest/releases/download/v0.4.2/media-ingest_v0.4.2_darwin_arm64_bundled.tar.gz"
      sha256 "444bd2370f8631f91ee42b6fe4f4e311f698d61f8ef339b18dc2a41511c52f0b"
    else
      url "https://github.com/harrisonwang/media-ingest/releases/download/v0.4.2/media-ingest_v0.4.2_darwin_amd64_bundled.tar.gz"
      sha256 "4b2bb5a26263c1b290e8db67a9aa5ee587792d9d29db9368083037cf98a1f2c0"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/media-ingest/releases/download/v0.4.2/media-ingest_v0.4.2_linux_amd64_bundled.tar.gz"
    sha256 "8b9fe433693412f5bba7282bc3f8372c7bb877854f7d2ab1b4b22fc8e3f4c4a1"
  end

  def install
    bin.install "mingest/mingest"
  end

  test do
    output = shell_output("#{bin}/mingest --version")
    assert_match "mingest", output
  end
end
