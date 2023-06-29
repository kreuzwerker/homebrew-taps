# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class M1TerraformProviderHelper < Formula
  desc "CLI to support with downloading and compiling terraform providers for Mac with M1 chip."
  homepage "https://github.com/kreuzwerker/m1-terraform-provider-helper"
  version "0.9.0"

  depends_on "go"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kreuzwerker/m1-terraform-provider-helper/releases/download/0.9.0/m1-terraform-provider-helper_0.9.0_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e98fc5a550709007a30005073b8f55a71aa0002f32a7a875900487e2f149623e"

      def install
        bin.install "m1-terraform-provider-helper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kreuzwerker/m1-terraform-provider-helper/releases/download/0.9.0/m1-terraform-provider-helper_0.9.0_Darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4d672784b5d70eea54a0c2c77a5fafc04e27c88092e1d1849f017c0662bb5521"

      def install
        bin.install "m1-terraform-provider-helper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kreuzwerker/m1-terraform-provider-helper/releases/download/0.9.0/m1-terraform-provider-helper_0.9.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8bc4eaca16e4de154ba0cff5b56ab52e1a90ba6eb0d73012580d81b90c848af2"

      def install
        bin.install "m1-terraform-provider-helper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kreuzwerker/m1-terraform-provider-helper/releases/download/0.9.0/m1-terraform-provider-helper_0.9.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2fc6b6553f22c7210445202fa7160b78abbcc629df593b7aea77404a8322491d"

      def install
        bin.install "m1-terraform-provider-helper"
      end
    end
  end
end
