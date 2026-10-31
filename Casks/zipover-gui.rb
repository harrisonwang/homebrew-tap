cask "zipover-gui" do
  version "1.2.0"
  name "Zipover"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/zipover-releases"

  on_arm do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.2.0/zipover-gui_v1.2.0_aarch64-apple-darwin.dmg"
    sha256 "e9e0b6d51029fda13ab70fb3826eeeb95ed61fa425c1769fc81985ed9c4a3787"
  end

  on_intel do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.2.0/zipover-gui_v1.2.0_x86_64-apple-darwin.dmg"
    sha256 "5542f94b968e23136c0b1a215bb3d88e54060e0a688ec740303d34da6de55bfe"
  end

  app "Zipover.app"
end
