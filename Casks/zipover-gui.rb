cask "zipover-gui" do
  version "1.3.0"
  name "Zipover"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/zipover-releases"

  on_arm do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.0/zipover-gui_v1.3.0_aarch64-apple-darwin.dmg"
    sha256 "1a5e11b47d3b71994ca24df4902f0dfac08961e4f234cbfa1c6b4b2dc1a5bf0e"
  end

  on_intel do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.0/zipover-gui_v1.3.0_x86_64-apple-darwin.dmg"
    sha256 "1017abce147af7413cfb2bcae763ac8c17602b69a544177aa68a2645a8ce5df1"
  end

  app "Zipover.app"
end
