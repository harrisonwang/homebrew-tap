class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.4.0/pith_v0.4.0_aarch64-apple-darwin.tar.gz"
      sha256 "5d74ed5661cfff956f8045ea4aa3412415a34cae2f62ad072ca66caa94444e16"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.4.0/pith_v0.4.0_x86_64-apple-darwin.tar.gz"
      sha256 "57047ae0bfbe2bc603be0256f704de9b77c124486950d5a49a53d83b46438a28"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.4.0/pith_v0.4.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "991defad5aa3637512f1614c31488f6567859e7f8319651b4202e1eb5f4638bc"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
