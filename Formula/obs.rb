class Obs < Formula
  desc "obs_websocket allows dart-based connections to the OBS (Open Broadcaster Software) plugin obs-websocket"
  homepage "https://github.com/faithoflifedev/easy_obs_websocket"
  url "https://api.github.com/repos/faithoflifedev/obs_websocket/tarball/v5.1.0+3"
  sha256 "b4b11a3247850caf4b832c7a9d38360a9562eb772a9df594fdd7a2d119ef71ac"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/obs.dart", "-o", "obs"
    bin.install "obs"
  end
  
  test do
    assert_match "obs_websocket v5.1.0+3", shell_output("bin/obs version")
  end
end