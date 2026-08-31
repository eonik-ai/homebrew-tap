# This file is generated on each release. Please open an issue rather than editing it.
cask "eonik" do
  arch arm: "", intel: "intel/"

  on_arm do
    version "0.7.0"
    sha256 "7b98fcd8d3ba6ca131a55c72dfbeaaa7b6257f15af2f33151b30f4a29b9af05b"

    livecheck do
      url "https://dl.eonik.ai/appcast.xml"
      strategy :sparkle, &:short_version
    end
  end
  on_intel do
    version "0.7.0"
    sha256 "e6c692329c79d075f99e7b925e4bbf5b2070732379bee67b93b5dc42264b180b"

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
  # The `eonik` shell command. It ships INSIDE the bundle, so brew links the same file
  # `install.sh` symlinks and the app's menu item installs — one implementation, three doors.
  # Homebrew already owns a directory on PATH, so a cask user needs no shell-config edit at all.
  binary "#{appdir}/eonik.app/Contents/Resources/eonik"

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
