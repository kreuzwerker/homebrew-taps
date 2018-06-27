class Awsu < Formula

  desc "Amazon Web Services Switch User (awsu)"
  homepage "https://github.com/kreuzwerker/awsu"

  version "2.2.1"
  url "https://github.com/kreuzwerker/awsu/releases/download/2.2.1/awsu-darwin-amd64",
    :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "03f3855bf3a5da204f3d0e443bc6010884287e006779588bd3fec25692808637"

  bottle :unneeded

  def install
    bin.install "awsu-darwin-amd64" => "awsu"
  end

  test do
    system "#{bin}/awsu", "-h"
  end

end
