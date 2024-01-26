class Vpnutil < Formula
  desc "Command-line tool that can start and stop a VPN service from the Terminal"
  homepage "https://github.com/Timac/VPNStatus"
  url "https://github.com/Timac/VPNStatus/releases/download/2.0/vpnutil.zip"
  sha256 "71431dd5b24cd056f80f679ef90deab938fb57ca3a186eb47f215665039a7747"
  license "MIT"
  depends_on :macos

  def install
    bin.install "vpnutil"
  end

  test do
    # Validate install
    system "#{bin}/vpnutil", "list"
  end
end
