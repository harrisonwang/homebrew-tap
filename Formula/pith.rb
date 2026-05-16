class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.5.0/pith_v0.5.0_aarch64-apple-darwin.tar.gz"
      sha256 "4e6ee1ae8bb8e3ed27d42392c3e16a7fbac2923c6dc0834039c214509c6815bd"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.5.0/pith_v0.5.0_x86_64-apple-darwin.tar.gz"
      sha256 "b91aae656e73722ab76139ad4b34c25dab6079044488c44fedfe8e31512fce4f"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.5.0/pith_v0.5.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d65ccd4cef97078d59ed74b32065070107b76d00d9007ec3edbd2d726c3ea76c"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
