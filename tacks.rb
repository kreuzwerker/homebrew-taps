class Tacks < Formula

  desc "Tacks"
  homepage "https://github.com/kreuzwerker/tacks"
  url "https://github.com/kreuzwerker/tacks/releases/download/0.1.0/tacks-osx"
  sha256 "685afb5462423c3f8228d1e75c6e771a65a1c74b8571d46a844c4f86036630cc"

  bottle :unneeded

  version "0.1.0"

  def install
    bin.install "tacks-osx"
    mv bin/"tacks-osx", bin/"tacks"
  end

  test do
    system "#{bin}/tacks", "-h"
  end

end
