cask "nimbus" do
  version "0.0.16-alpha"
  sha256 "e2360f32c0e1eef59873da4f885911ae2998bc94cbbaf4ca6ddb643d39ecc073"

  url "https://github.com/syllogismos/nimbus/releases/download/v#{version}/Nimbus-#{version}-mac-arm64.dmg"
  name "Nimbus"
  desc "AI browser companion"
  homepage "https://usenimbus.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-[a-z0-9.-]+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Nimbus.app"
end
