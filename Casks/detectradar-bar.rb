cask "detectradar-bar" do
  version "0.1.0"
  sha256 "517d27a56e5bb41b03994487a51f0d10308446af93ca80a786d3c6701aab9197"

  url "https://dl.detectradar.com/macos/releases/macos-v#{version}/DetectRadarBar-v#{version}-macos-universal.dmg"
  name "DetectRadarBar"
  desc "Menu bar companion for DetectRadar showing exit IP, network type, and IPv6 leak alerts"
  homepage "https://detectradar.com/macos/"

  depends_on macos: ">= :ventura"

  app "DetectRadarBar.app"

  zap trash: [
    "~/Library/Preferences/com.detectradar.bar.plist",
  ]
end
