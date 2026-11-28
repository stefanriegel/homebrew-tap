cask "meettoknow" do
  version "2026.11.28"
  sha256 "edaaa3ec971965578a276e6add1fe12604050cb14efbc12c3144c43ab2542b00"

  url "https://github.com/stefanriegel/meettoknow-releases/releases/download/v#{version}/MeetToKnow-#{version}.dmg"
  name "MeetToKnow"
  desc "Local-first AI meeting assistant"
  homepage "https://github.com/stefanriegel/meettoknow-releases"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "MeetToKnow.app"

  zap trash: [
    "~/Library/Caches/me.riegel.meettoknow",
    "~/Library/HTTPStorages/me.riegel.meettoknow",
    "~/Library/Preferences/me.riegel.meettoknow.plist",
    "~/Library/Saved Application State/me.riegel.meettoknow.savedState",
  ]
end
