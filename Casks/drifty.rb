cask "drifty" do
  version "1.21.0"
  sha256 "10082852eb4d995d6d2ff116917e10a9844abc3cb667ce662107a2d65dab2b28"

  url "https://github.com/edgethink00/drifty_releases/releases/download/#{version}/drifty_#{version}_aarch64.dmg"
  name "Drifty"
  desc "AI time tracker that separates focus from drift"
  homepage "https://drifty.so/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "drifty.app"

  zap trash: [
    "~/Library/Application Support/Drifty",
    "~/Library/Application Support/so.drifty.mac",
    "~/Library/Caches/so.drifty.mac",
    "~/Library/Preferences/so.drifty.mac.plist",
    "~/Library/WebKit/so.drifty.mac",
  ]
end
