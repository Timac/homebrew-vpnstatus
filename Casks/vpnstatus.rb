cask "vpnstatus" do
  version "2.0"
  sha256 "29ce723c81838275f78dfd7ec19c00bdd4b0d8bb202dbf77eb5a5c64123211d3"

  url "https://github.com/Timac/VPNStatus/releases/download/#{version}/VPNStatus.app.zip"
  name "VPNStatus"
  desc "Replacement for builtin VPN Status"
  homepage "https://github.com/Timac/VPNStatus"

  auto_updates false

  app "VPNStatus.app"

  zap trash: "~/Library/Preferences/org.timac.VPNStatus.plist"
end
