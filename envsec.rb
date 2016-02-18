class Envsec < Formula

  desc "Encrypted environment variables via AWS KMS"
  homepage "https://github.com/kreuzwerker/envsec"
  url "https://github.com/kreuzwerker/envsec/releases/download/1.0.0-RC1/es-osx"
  sha256 "a4a7842518576e99999400a683837cc260992a63c8504fe93248192046c094b8"
  
  bottle :unneeded

  version "1.0.0-RC1"

  def install
    bin.install "es-osx"
    mv bin/"es-osx", bin/"es"
  end

  test do
    system "#{bin}/es", "-h"
  end

end
