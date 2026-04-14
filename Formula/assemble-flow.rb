class AssembleFlow < Formula
  desc "Developer CLI for AssembleFlow workflows"
  homepage "https://github.com/SSYCloud/AssembleFlow"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.2.1/assemble-flow-darwin-arm64.tar.gz"
      sha256 "cac9e0178a396ec32a31f80a32cdf6bd8e1e0879b8288728f62ae239cdc352f7"
    else
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.2.1/assemble-flow-darwin-amd64.tar.gz"
      sha256 "f4a7c560cc0925a90dd1023ecb4214b9c6c2cff352525a7ecd018846ef44b929"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.2.1/assemble-flow-linux-arm64.tar.gz"
      sha256 "5b0515d27d247617ed1423f94cb176973f584af18ece4faae50bd7c180b66c5f"
    else
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.2.1/assemble-flow-linux-amd64.tar.gz"
      sha256 "be5b316c9a8d39cb402ec5bf488cee77c2c5d1998b437823d64ca49a377b6357"
    end
  end

  def install
    bin.install "assemble-flow"
  end

  test do
    assert_match "Developer CLI for AssembleFlow workflows", shell_output("#{bin}/assemble-flow --help")
  end
end
