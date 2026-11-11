cask "zipover-gui" do
  version "1.3.7"
  name "Zipover"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/zipover-releases"

  on_arm do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.7/zipover-gui_v1.3.7_aarch64-apple-darwin.dmg"
    sha256 "107aafc074d24e8d6fda8ffaeaa8129460fb83c59f5913eed948576328b9ddc9"
  end

  on_intel do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.7/zipover-gui_v1.3.7_x86_64-apple-darwin.dmg"
    sha256 "718a759d373af47b78ae042e3ee8afb3088802ce94976b4ed87d6345767ec203"
  end

  app "Zipover.app"
end
