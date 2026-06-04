class Sift < Formula
  desc "Provider-driven technical news radar CLI"
  homepage "https://github.com/harrisonwang/sift"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/sift/releases/download/v0.7.1/sift_v0.7.1_aarch64-apple-darwin.tar.gz"
      sha256 "50a255c81396758b00004abf91906db60ca134735d9eea11240f7064a4b5a8ae"
    end

    on_intel do
      url "https://github.com/harrisonwang/sift/releases/download/v0.7.1/sift_v0.7.1_x86_64-apple-darwin.tar.gz"
      sha256 "d03c2d36226947dfd740df5406e391558c4758691f85c751b902c0384ba6c0df"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/sift/releases/download/v0.7.1/sift_v0.7.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a281fb68559b4d1cb6b02b46cb6341d20187be714222f1e6e9dc97747bf86173"
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
