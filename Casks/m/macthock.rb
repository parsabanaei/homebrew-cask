cask "macthock" do
  version "1.0.0"
  sha256 "2a1449b8670cd3fbd54a8c9be03d155e71d6dc9bad4e488eea9793f009c6f262"

  url "https://github.com/parsabanaei/MacThock-Releases/releases/download/v#{version}/MacThock-#{version}.dmg"
  name "MacThock"
  desc "Play keyboard sounds as you type"
  homepage "https://macthock.com/"

  depends_on macos: :ventura

  app "MacThock.app"

  zap trash: [
    "~/Library/Application Support/MacThock",
    "~/Library/Caches/com.macthock.app",
    "~/Library/Preferences/com.macthock.app.plist",
    "~/Library/Saved Application State/com.macthock.app.savedState",
  ]
end
