class Awsu < Formula

  desc "Amazon Web Services Switch User (awsu)"
  homepage "https://github.com/kreuzwerker/awsu"

  version "2.2.0"
  url "https://github.com/kreuzwerker/awsu/releases/download/2.2.0/awsu-darwin-amd64",
    :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "1338b67b45cce0516e9b4360d191ed12ccfcdbc23584ec831200b63162b403d2"

  bottle :unneeded

  def install
    bin.install "awsu-darwin-amd64" => "awsu"
  end

  test do
    system "#{bin}/awsu", "-h"
  end

end
