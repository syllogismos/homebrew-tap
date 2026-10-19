cask "nimbus" do
  version "0.0.17-alpha"
  sha256 "0ecbaa124a474ada6c2125cf8b827643742c192f98257d41f79dd30c10a20042"

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
