class Envplate < Formula

  desc "Docker-friendly trivial templating for configuration files using environment keys"
  homepage "https://github.com/kreuzwerker/envplate"
  url "https://github.com/kreuzwerker/envplate/releases/download/1.0.0-RC1/ep-osx"
  sha256 "c85381457c58d40caeadf621d7b3fd787dacd00028c2c0d1e385b5611b734be8"

  bottle :unneeded

  version "1.0.0-RC1"

  def install
    bin.install "ep-osx"
    mv bin/"ep-osx", bin/"ep"
  end

  test do
    system "#{bin}/ep", "-h"
  end

end
