class Obs < Formula
  desc "obs_websocket allows dart-based connections to the OBS (Open Broadcaster Software) plugin obs-websocket"
  homepage "https://github.com/faithoflifedev/easy_obs_websocket"
  url "https://api.github.com/repos/faithoflifedev/obs_websocket/tarball/v5.0.0+8"
  sha256 "dd3af4e833fb0e4c0c491d0bbaeb59df43867106b6e570e9b91aef444b6bb7fc"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/obs.dart", "-o", "obs"
    bin.install "obs"
  end
  
  test do
    assert_match "obs_websocket v5.0.0+8", shell_output("bin/obs version")
  end
end