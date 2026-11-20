cask "nimbus" do
  version "0.0.21-alpha"
  sha256 "6f24ec02bd4dc008d20a1319e5765c8bf905a14da1feaf5f9e5f1378cae8bd06"

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
