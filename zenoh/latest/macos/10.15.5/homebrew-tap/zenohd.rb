class zenohd < Formula
  desc "Zenoh daemon script."
  homepage "https://github.com/atolab/atobin"
  url "https://github.com/atolab/atobin/zenoh/latest/macos/10.15.5/raw/master/zenohd-0.3.0.tar.gz"
  sha256 "b1bd93853a32def3d9ec1251e9a06f903701ac715286e4cc81a784f86d6e3266"
  version "1.0"

  def install
    # install zenohd script, create symlink to script in /usr/local/bin
    bin.install "zenohd"
  end

end
