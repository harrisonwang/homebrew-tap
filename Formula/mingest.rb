class Mingest < Formula
  desc "Local video archiving CLI powered by yt-dlp and ffmpeg"
  homepage "https://github.com/harrisonwang/mingest"
  version "0.6.3"
  license "AGPL-3.0-only"

  depends_on "yt-dlp"
  depends_on "ffmpeg"
  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/mingest/releases/download/v0.6.3/mingest_v0.6.3_darwin_arm64_slim.tar.gz"
      sha256 "ca58767dd3a115a3c807a83075e1fa30a64a483b69cea9f5f375f39ca399a3c3"
    end

    on_intel do
      url "https://github.com/harrisonwang/mingest/releases/download/v0.6.3/mingest_v0.6.3_darwin_amd64_slim.tar.gz"
      sha256 "a99242232c86dfc5f3f466bfc4e591e242d086833fd6401cf2ab404091620fdd"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/mingest/releases/download/v0.6.3/mingest_v0.6.3_linux_amd64_slim.tar.gz"
    sha256 "dd278c92cbf9be5aecfb0a26fddd07e5b550e955d1645d971c60fb8d50c4568b"
  end

  def install
    bin.install "mingest"
  end

  test do
    output = shell_output("#{bin}/mingest --version")
    assert_match "mingest", output
  end
end
