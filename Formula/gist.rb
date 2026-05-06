class Gist < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/gist"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/gist/releases/download/v0.2.1/gist_v0.2.1_aarch64-apple-darwin.tar.gz"
      sha256 "55c425a1277b7ae02ef78fe3ddd21d4231f2016b0c8eddd97a4866ef2c856137"
    end

    on_intel do
      url "https://github.com/harrisonwang/gist/releases/download/v0.2.1/gist_v0.2.1_x86_64-apple-darwin.tar.gz"
      sha256 "2025dc169b35df209a461ddef69e722d37ebfc239afb034f32b607461f856f12"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/gist/releases/download/v0.2.1/gist_v0.2.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "da0e5514a94df95b7c364b3a46a0d441763ab6e9db275183b907f80bc9b9258c"
  end

  def install
    bin.install "gist/gist"
  end

  test do
    output = shell_output("#{bin}/gist --version")
    assert_match "gist", output
  end
end
