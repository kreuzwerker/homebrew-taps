class Envplate < Formula

  desc "Docker-friendly trivial templating for configuration files using environment keys"
  homepage "https://github.com/kreuzwerker/envplate"
  url "https://github.com/kreuzwerker/envplate/releases/download/v0.0.8/ep-osx"
  sha256 "71eeb817619172ab63c3405dd2309e0e553f12fa3d2fa3cd13ae49b159531847"

  bottle :unneeded

  version "0.8"

  def install
    bin.install "ep-osx"
    mv bin/"ep-osx", bin/"ep"
  end

  test do
    system "#{bin}/ep", "-h"
  end

end
