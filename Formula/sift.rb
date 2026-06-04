class Sift < Formula
  desc "Provider-driven technical news radar CLI"
  homepage "https://github.com/harrisonwang/sift"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/sift/releases/download/v0.7.3/sift_v0.7.3_aarch64-apple-darwin.tar.gz"
      sha256 "c139863dd6f8bee894bdb902a92852ac79ab04057d25cc2d93d629ab8d6052e1"
    end

    on_intel do
      url "https://github.com/harrisonwang/sift/releases/download/v0.7.3/sift_v0.7.3_x86_64-apple-darwin.tar.gz"
      sha256 "c6d1b0ee56ffcf5e41fe193b5688c7572ed1e6b7fbf8a244325cd34331c17911"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/sift/releases/download/v0.7.3/sift_v0.7.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "620e9850e3b4694715cc8b8a964e7285e412e9149bf27722b32adc3a610b3139"
  end

  def install
    bin.install "sift"
    pkgshare.install "config.example.yaml"
  end

  def caveats
    <<~EOS
      创建默认配置：
        sift config init

      然后编辑 ~/.sift/config.yaml，并校验配置：
        sift config validate

      随包安装的配置示例也可在这里查看：
        #{pkgshare}/config.example.yaml
    EOS
  end

  test do
    output = shell_output("#{bin}/sift --version")
    assert_match "sift", output
  end
end
