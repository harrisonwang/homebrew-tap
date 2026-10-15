class Msd < Formula
  desc "Detect model substitution through local AI clients"
  homepage "https://github.com/harrisonwang/model-substitution-detector"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/model-substitution-detector/releases/download/v0.1.0/msd_v0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "2bb59fc4ae14a5e2aa911debfb65f2901d45f4a93aeaff370079bafc8595a5cc"
    end

    on_intel do
      url "https://github.com/harrisonwang/model-substitution-detector/releases/download/v0.1.0/msd_v0.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "b642723e995a77291666dc3cd76b115070bd37717cd2ace13b3546a9b2fa7b93"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/harrisonwang/model-substitution-detector/releases/download/v0.1.0/msd_v0.1.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5e7fc2dad8aff4505e85e8696618df0b24ad1daa4c6367c7d3a367b8fc9f7e36"
  end

  def install
    bin.install "msd"
  end

  test do
    assert_match "msd 0.1.0", shell_output("#{bin}/msd --version")
  end
end
