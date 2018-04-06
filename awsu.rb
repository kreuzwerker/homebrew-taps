class Awsu < Formula

  desc "Amazon Web Services Switch User (awsu)"
  homepage "https://github.com/kreuzwerker/awsu"

  version "2.1.1"
  url "https://github.com/kreuzwerker/awsu/releases/download/2.1.1/awsu-darwin-amd64",
    :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "4cd383a01d04de90330df4dff323a7762b6156fe6fde1afb2fb856022ed77ae1"

  bottle :unneeded

  def install
    bin.install "awsu-darwin-amd64" => "awsu"
  end

  test do
    system "#{bin}/awsu", "-h"
  end

end
