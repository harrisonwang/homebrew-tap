cask "zipover-gui" do
  version "1.0.0"
  name "Zipover"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/zipover-releases"

  on_arm do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.0.0/zipover-gui_v1.0.0_aarch64-apple-darwin.dmg"
    sha256 "4cc70345e679b728e5ff4d8dac196413570f1ccd0dbccd6cc62de5c55bd812c4"
  end

  on_intel do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.0.0/zipover-gui_v1.0.0_x86_64-apple-darwin.dmg"
    sha256 "7fa255c412500b9edc75c461aefcf18ac843886800373691a37919c2cabb7615"
  end

  app "Zipover.app"
end
