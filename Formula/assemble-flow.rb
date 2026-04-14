class AssembleFlow < Formula
  desc "Developer CLI for AssembleFlow workflows"
  homepage "https://github.com/SSYCloud/AssembleFlow"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.1.3/assemble-flow-darwin-arm64.tar.gz"
      sha256 "36b0cade38ecef38041be8b53dafa0ee6c84c92bba5d7a6bbda901c2bd56d0e3"
    else
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.1.3/assemble-flow-darwin-amd64.tar.gz"
      sha256 "da313b6aa02401b913867b3ab50d32d3a9eefdd638cbc298de4011bf7dd25258"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.1.3/assemble-flow-linux-arm64.tar.gz"
      sha256 "c5f16019109ef8a810e521cfdebfb3bc94333a0e739fef04a89191c7a0f5fb9f"
    else
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.1.3/assemble-flow-linux-amd64.tar.gz"
      sha256 "4e9face5e2ed4a317fc5b6ef7d3ccdbd05fb206a6d072c081e348239d2e0a417"
    end
  end

  def install
    bin.install "assemble-flow"
  end

  test do
    assert_match "Developer CLI for AssembleFlow workflows", shell_output("#{bin}/assemble-flow --help")
  end
end
