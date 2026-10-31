cask "zipover-gui" do
  version "1.1.0"
  name "Zipover"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/zipover-releases"

  on_arm do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.1.0/zipover-gui_v1.1.0_aarch64-apple-darwin.dmg"
    sha256 "6e88c604ad2a0943d5d25f3e964f3b354b5f2d2e42995d934cd16cf2a0759ceb"
  end

  on_intel do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.1.0/zipover-gui_v1.1.0_x86_64-apple-darwin.dmg"
    sha256 "418dfc4f72016297347c16259bb79c4e68a5fc2e7f542db4bd7bc0a3115bef83"
  end

  app "Zipover.app"
end
