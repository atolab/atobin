class zenohd < Formula
  desc "Zenoh daemon script."
  homepage "https://github.com/atolab/atobin"
  url "https://github.com/atolab/atobin/zenoh/latest/macos/10.15.5/raw/master/zenohd-0.3.0.tar.gz"
  sha256 "..."
  version "1.0"

  def install
    # install zenohd script, create symlink to script in /usr/local/bin
    bin.install "zenohd"
  end

end
