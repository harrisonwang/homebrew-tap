class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.5.2/pith_v0.5.2_aarch64-apple-darwin.tar.gz"
      sha256 "ee73e9f6d895a75934852dcbc7156f1b30e08f536ea6a8bf31c5d82d50dbabcf"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.5.2/pith_v0.5.2_x86_64-apple-darwin.tar.gz"
      sha256 "e45c19fcdf83183c9e54b721ace15b4ba702be66c35dbfed69c6c69673be553a"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.5.2/pith_v0.5.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3a4458a9b31b4be7b67516888293a9e84bc77fbac9c566dd241586704686ae95"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
