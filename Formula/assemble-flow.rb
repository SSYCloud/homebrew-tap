class AssembleFlow < Formula
  desc "Developer CLI for AssembleFlow workflows"
  homepage "https://github.com/SSYCloud/AssembleFlow"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.2.2/assemble-flow-darwin-arm64.tar.gz"
      sha256 "2b9a874a0f251e6985c50d12f474c6b8927c30eaaa8c6cf2d46007e20ad580d6"
    else
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.2.2/assemble-flow-darwin-amd64.tar.gz"
      sha256 "016612121f52a0e5052aebd151bea0f4acca4f3a23ab4adcc02071d62d4aced1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.2.2/assemble-flow-linux-arm64.tar.gz"
      sha256 "d7451887d35637d5c8d59920b8accbd61c81909bf5175415d7108e52143ef77b"
    else
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.2.2/assemble-flow-linux-amd64.tar.gz"
      sha256 "e3ce34eb9f73b28c9b1a2c52ed838723ecbbddbfc47bf159573077208b47c69b"
    end
  end

  def install
    bin.install "assemble-flow"
  end

  test do
    assert_match "Developer CLI for AssembleFlow workflows", shell_output("#{bin}/assemble-flow --help")
  end
end
