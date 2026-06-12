class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.0/spoor_v0.8.0_aarch64-apple-darwin.tar.gz"
      sha256 "de10987bc640e4d7aa804004b809c13ec62d0fe7dad503cb9ba78af3e936f991"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.0/spoor_v0.8.0_x86_64-apple-darwin.tar.gz"
      sha256 "c3a6793b3bb18ee5407b44f3b6791e3232643f89e7142833c273678767288649"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.0/spoor_v0.8.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "03888fafed401ba29367d881327ef64db8a3f7230ec18819643b228bda38ab55"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
