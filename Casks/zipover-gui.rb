cask "zipover-gui" do
  version "1.3.1"
  name "Zipover"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/zipover-releases"

  on_arm do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.1/zipover-gui_v1.3.1_aarch64-apple-darwin.dmg"
    sha256 "b38d117f3c30eefc7e8a5f185b087c60bfcf0b7480b21bbb8226039c94738d98"
  end

  on_intel do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.1/zipover-gui_v1.3.1_x86_64-apple-darwin.dmg"
    sha256 "4f6e166473a71abdf989eba26fa4eb2e470919d374b8c35e89ef4dbae8f7c7bb"
  end

  app "Zipover.app"
end
