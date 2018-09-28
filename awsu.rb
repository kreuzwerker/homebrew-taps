class Awsu < Formula

  desc "Amazon Web Services Switch User (awsu)"
  homepage "https://github.com/kreuzwerker/awsu"

  version "2.3.0RC1"
  url "https://github.com/kreuzwerker/awsu/releases/download/2.3.0RC1/awsu-darwin-amd64"
  sha256 "685a2843e4116ef721eee940f9df989c88ff4918cad384c591c9c801765e7507"

  bottle :unneeded

  def install
    bin.install "awsu-darwin-amd64" => "awsu"
  end

  test do
    system "#{bin}/awsu", "-h"
  end

end
