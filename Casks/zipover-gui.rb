cask "zipover-gui" do
  version "1.3.3"
  name "Zipover"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/zipover-releases"

  on_arm do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.3/zipover-gui_v1.3.3_aarch64-apple-darwin.dmg"
    sha256 "8172dc73267560003b166f02971c1e1e1da3b3f2881d01ced8c441f2d77f52dd"
  end

  on_intel do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.3/zipover-gui_v1.3.3_x86_64-apple-darwin.dmg"
    sha256 "f67bd14b912062235d53360fd8b8f2a566097bcadf80993ee2550f3d39d962c4"
  end

  app "Zipover.app"
end
