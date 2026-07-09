cask "drifty" do
  version "1.2.12"
  sha256 "d4f0da1dabc7991187812a132bc15703718547f35bb2424479f6dce38a516af3"

  url "https://github.com/edgethink00/drifty_releases/releases/download/#{version}/drifty_#{version}_aarch64.dmg"
  name "Drifty"
  desc "AI-powered Mac time tracker that separates focus from drift"
  homepage "https://drifty.so"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Drifty.app"

  zap trash: [
    "~/Library/Application Support/Drifty",
    "~/Library/Caches/so.drifty.app",
    "~/Library/Preferences/so.drifty.app.plist",
  ]
end
















