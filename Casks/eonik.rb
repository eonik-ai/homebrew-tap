# This file is generated on each release. Please open an issue rather than editing it.
cask "eonik" do
  arch arm: "", intel: "intel/"

  on_arm do
    version "0.5.0"
    sha256 "1621ae32e9b930effd5fc99cdf8adff0c7ce42271454e4e5dfbf6c9f651bb8c8"

    livecheck do
      url "https://dl.eonik.ai/appcast.xml"
      strategy :sparkle, &:short_version
    end
  end
  on_intel do
    version "0.5.0"
    sha256 "1d96eeb9ef4fd7d43373161fcb15c51d5b17ae625e1634c95cb4364b0aad6035"

    livecheck do
      url "https://dl.eonik.ai/intel/appcast.xml"
      strategy :sparkle, &:short_version
    end
  end

  url "https://dl.eonik.ai/#{arch}eonik-#{version}.dmg",
      verified: "dl.eonik.ai/"
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
