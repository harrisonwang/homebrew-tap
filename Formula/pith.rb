class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.7.1/pith_v0.7.1_aarch64-apple-darwin.tar.gz"
      sha256 "eba0e213b610b502343aee0ecf614b165f09cf485a3bddb5080315c634a3c163"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.7.1/pith_v0.7.1_x86_64-apple-darwin.tar.gz"
      sha256 "51793fc60be5082602581c08deca7c85e2f6d903051112817d937225f7d879dd"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.7.1/pith_v0.7.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "65134cfc665cf0f07c103bcdb9b9a2413416a637206386e5c712a03c7b2e052e"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
