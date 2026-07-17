cask "flowshelf" do
  version "1.5.0"
  sha256 "8f4e6a1a5b06e9b8553b71ea804cea3e022e503c1b0bb8e57909d6fd5e318074"

  url "https://github.com/mahinkadery/FlowShelf/releases/download/v#{version}/FlowShelf-#{version}.dmg"
  name "FlowShelf"
  desc "Menu-bar shelf, clipboard history, screenshot studio and window tools"
  homepage "https://flowshelf.app/"

  livecheck do
    url "https://raw.githubusercontent.com/mahinkadery/FlowShelf/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "FlowShelf.app"

  zap trash: [
    "~/Library/Application Support/FlowShelf",
    "~/Library/Caches/com.flowshelf.app",
    "~/Library/HTTPStorages/com.flowshelf.app",
    "~/Library/Preferences/com.flowshelf.app.plist",
  ]
end
