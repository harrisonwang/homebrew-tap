class Mingest < Formula
  desc "Local video archiving CLI powered by yt-dlp and ffmpeg"
  homepage "https://github.com/harrisonwang/mingest"
  version "0.6.1"
  license "AGPL-3.0-only"

  depends_on "yt-dlp"
  depends_on "ffmpeg"
  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/mingest/releases/download/v0.6.1/mingest_v0.6.1_darwin_arm64_slim.tar.gz"
      sha256 "e40c4aa88180a3ae3da7ae29cff17e9644ae780ba8c2fb89a64b90aa4bb5eff0"
    end

    on_intel do
      url "https://github.com/harrisonwang/mingest/releases/download/v0.6.1/mingest_v0.6.1_darwin_amd64_slim.tar.gz"
      sha256 "7ab2d9a346040d039aee0c42a574e26d70a8c5f16e069304fb9d1d0a8ec39f19"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/mingest/releases/download/v0.6.1/mingest_v0.6.1_linux_amd64_slim.tar.gz"
    sha256 "1bf7857872d9b06c7a844cc18859620676883526030d0c8351c8b3a99b43ae2d"
  end

  def install
    bin.install "mingest"
  end

  test do
    output = shell_output("#{bin}/mingest --version")
    assert_match "mingest", output
  end
end
