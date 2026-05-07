class Mingest < Formula
  desc "Local video archiving CLI powered by yt-dlp and ffmpeg"
  homepage "https://github.com/harrisonwang/mingest"
  version "0.6.2"
  license "AGPL-3.0-only"

  depends_on "yt-dlp"
  depends_on "ffmpeg"
  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/mingest/releases/download/v0.6.2/mingest_v0.6.2_darwin_arm64_slim.tar.gz"
      sha256 "d40a4b98f65f56677ada375e40e90a5e7df90c015c3f44505adc518c1d626f56"
    end

    on_intel do
      url "https://github.com/harrisonwang/mingest/releases/download/v0.6.2/mingest_v0.6.2_darwin_amd64_slim.tar.gz"
      sha256 "1afe960690090fa97db5574d1e5037253b8a2970012dc3bfdbcf62a547b224c2"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/mingest/releases/download/v0.6.2/mingest_v0.6.2_linux_amd64_slim.tar.gz"
    sha256 "9c124a57baf38900bfd5dab07409f1102d20f75b47400af93cdbae8c27d4e907"
  end

  def install
    bin.install "mingest"
  end

  test do
    output = shell_output("#{bin}/mingest --version")
    assert_match "mingest", output
  end
end
