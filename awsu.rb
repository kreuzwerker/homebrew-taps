class Awsu < Formula

  desc "Amazon Web Services Switch User (awsu)"
  homepage "https://github.com/kreuzwerker/awsu"

  version "2.3.2"
  url "https://github.com/kreuzwerker/awsu/releases/download/2.3.2/awsu-darwin-amd64"
  sha256 "f75ba543cf193614c7455e02b8780960e22e9e0140b7f37583279bb9d9a0030a"

  bottle :unneeded

  def install
    bin.install "awsu-darwin-amd64" => "awsu"
  end

  test do
    system "#{bin}/awsu", "-h"
  end

end
