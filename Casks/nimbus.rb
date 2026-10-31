cask "nimbus" do
  version "0.0.19-alpha"
  sha256 "6915114b7e32a97c9f4396f44a555f817e1af2bf8e798b240032c94e3b40d0d2"

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
