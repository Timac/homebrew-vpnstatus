cask "vpnstatus" do
  version "3.0"
  sha256 "44b6c5a1e25d868ec69a3a46b75fefce476b4913fffaeb0f4d77bfdec7fc844b"

  url "https://github.com/Timac/VPNStatus/releases/download/#{version}/VPNStatus.app.zip"
  name "VPNStatus"
  desc "Replacement for builtin VPN Status"
  homepage "https://github.com/Timac/VPNStatus"

  auto_updates false

  app "VPNStatus.app"

  zap trash: "~/Library/Preferences/org.timac.VPNStatus.plist"
end
