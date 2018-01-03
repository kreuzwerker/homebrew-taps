class Awsu < Formula

  desc "Amazon Web Services Switch User (awsu)"
  homepage "https://github.com/kreuzwerker/awsu"

  version "2.0.2"
  url "https://github.com/kreuzwerker/awsu/releases/download/2.0.2/awsu-darwin-amd64",
    :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "d44c84ea457857998589eb2ed7e3e35eeab6be0bd5acd02f9d83562ee1e1785b"

  bottle :unneeded

  def install
    bin.install "awsu-darwin-amd64" => "awsu"
  end

  test do
    system "#{bin}/awsu", "-h"
  end

end
