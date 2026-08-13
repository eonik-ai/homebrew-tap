# This file is generated on each release. Please open an issue rather than editing it.
cask "eonik" do
  arch arm: "", intel: "intel/"

  on_arm do
    version "0.4.0"
    sha256 "a579dfa190339896b4d038fdadd91ae7ad4b59327a168636b27b9f818157f8c5"

    livecheck do
      url "https://dl.eonik.ai/appcast.xml"
      strategy :sparkle, &:short_version
    end
  end

  url "https://dl.eonik.ai/#{arch}eonik-#{version}.dmg",
      verified: "https://dl.eonik.ai/"
  name "eonik"
  desc "Mac-native editor for finished, on-brand ads"
  homepage "https://www.eonik.ai/"

  auto_updates true
  depends_on macos: :sequoia

  app "eonik.app"

  uninstall quit: "io.eonik.app"

  zap trash: [
    "~/Library/Application Support/eonik",
    "~/Library/Application Support/Eonik",
    "~/Library/Application Support/io.eonik.app",
    "~/Library/Caches/eonik",
    "~/Library/Caches/io.eonik.app",
    "~/Library/HTTPStorages/eonik.binarycookies",
    "~/Library/HTTPStorages/io.eonik.app",
    "~/Library/HTTPStorages/io.eonik.app.binarycookies",
    "~/Library/Preferences/Eonik.plist",
    "~/Library/Preferences/io.eonik.app.plist",
    "~/Library/Saved Application State/io.eonik.app.savedState",
  ]
end
