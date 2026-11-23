cask "refocus" do
  version "0.1.0"
  sha256 "REPLACE_WITH_SHA256_FROM_PACKAGE_RELEASE"

  url "https://github.com/triffski/refocus-scarlett-mixer/releases/download/v#{version}/ReFocus-#{version}.zip"
  name "ReFocus"
  desc "Mixer for Focusrite Scarlett 1st Gen audio interfaces"
  homepage "https://github.com/triffski/refocus-scarlett-mixer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "ReFocus.app"

  zap trash: [
    "~/Library/Application Support/ReFocus",
    "~/Library/Preferences/local.refocus.app.plist",
  ]
end
