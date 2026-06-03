class Sift < Formula
  desc "Provider-driven technical news radar CLI"
  homepage "https://github.com/harrisonwang/sift"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/sift/releases/download/v0.1.0/sift_v0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "fe96c6135969bfeaac9676bb4d81ea67f4c9ac743cbe92a29961f971f95b4cd5"
    end

    on_intel do
      url "https://github.com/harrisonwang/sift/releases/download/v0.1.0/sift_v0.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "9991ec9052c2f57ef81b44db24fefa80b85da0affb8ac81a99a553b841b80aa6"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/sift/releases/download/v0.1.0/sift_v0.1.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c3ae4b25f5ca8e1daa69cf2e54396db748cb4961cf4367a23f3b95a6f629ca24"
  end

  def install
    bin.install "sift"
  end

  test do
    output = shell_output("#{bin}/sift --version")
    assert_match "sift", output
  end
end
