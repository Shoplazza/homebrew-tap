# Formula/shoplazza-cli.rb
class ShoplazzaCli < Formula
  desc "The official CLI for Shoplazza Open Platform"
  homepage "https://github.com/Shoplazza/shoplazza-cli"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shoplazza/shoplazza-cli/releases/download/v2.0.0/shoplazza-cli-2.0.0-darwin-arm64.tar.gz"
      sha256 "<ACTUAL_SHA256>"
    end
    on_intel do
      url "https://github.com/Shoplazza/shoplazza-cli/releases/download/v2.0.0/shoplazza-cli-2.0.0-darwin-amd64.tar.gz"
      sha256 "<ACTUAL_SHA256>"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shoplazza/shoplazza-cli/releases/download/v2.0.0/shoplazza-cli-2.0.0-linux-arm64.tar.gz"
      sha256 "<ACTUAL_SHA256>"
    end
    on_intel do
      url "https://github.com/Shoplazza/shoplazza-cli/releases/download/v2.0.0/shoplazza-cli-2.0.0-linux-amd64.tar.gz"
      sha256 "<ACTUAL_SHA256>"
    end
  end

  def install
    bin.install "shoplazza"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shoplazza --version")
  end
end
