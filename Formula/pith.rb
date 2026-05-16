class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.5.3/pith_v0.5.3_aarch64-apple-darwin.tar.gz"
      sha256 "4227ce8faec6b609b51cfc034f69535be5466b065d489deccbddd21aaa311c8a"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.5.3/pith_v0.5.3_x86_64-apple-darwin.tar.gz"
      sha256 "bcedc67bf2f0876e175ad5ca420a9bd51e46f92f2bde5ac3cf9a37f6105d2702"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.5.3/pith_v0.5.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "05ff001dff268d146b52f9ef94ed67357826f7273794cfc6e359c554c4aac149"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
