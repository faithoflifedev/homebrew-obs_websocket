class Obs < Formula
  desc "obs_websocket allows dart-based connections to the OBS (Open Broadcaster Software) plugin obs-websocket"
  homepage "https://github.com/faithoflifedev/easy_obs_websocket"
  url "https://api.github.com/repos/faithoflifedev/obs_websocket/tarball/v5.0.0+13"
  sha256 "8d37628cd23499a525170398bbf36c7a395ccdedcc6493a6440e865663af1a6b"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/obs.dart", "-o", "obs"
    bin.install "obs"
  end
  
  test do
    assert_match "obs_websocket v5.0.0+13", shell_output("bin/obs version")
  end
end