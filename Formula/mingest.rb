class Mingest < Formula
  desc "Local video archiving CLI powered by yt-dlp and ffmpeg"
  homepage "https://github.com/harrisonwang/media-ingest"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harrisonwang/media-ingest/releases/download/v0.4.1/media-ingest_v0.4.1_darwin_arm64_bundled.tar.gz"
      sha256 "df2c080a53d2137b4579f81f7ed0117cbc5dae2449f71a03c0640fe3b28565a8"
    else
      url "https://github.com/harrisonwang/media-ingest/releases/download/v0.4.1/media-ingest_v0.4.1_darwin_amd64_bundled.tar.gz"
      sha256 "3c08e9fa565a581c2351c3a9e9ed93e41b0bb951e71f979e0c0633ce6c2e7aec"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/media-ingest/releases/download/v0.4.1/media-ingest_v0.4.1_linux_amd64_bundled.tar.gz"
    sha256 "3b2152c52fad059a1443030830372b5d4477570ea51a3a27367abc14a44f9b01"
  end

  def install
    bin.install "mingest/mingest"
  end

  test do
    output = shell_output("#{bin}/mingest --version")
    assert_match "mingest", output
  end
end
