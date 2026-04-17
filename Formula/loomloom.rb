class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/SSYCloud/loomloom"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/loomloom/releases/download/v0.2.3/loomloom-darwin-arm64.tar.gz"
      sha256 "0021c32aec32f8c619868567967abaea5e0f9cbda100f34c770566b42f33d95b"
    else
      url "https://github.com/SSYCloud/loomloom/releases/download/v0.2.3/loomloom-darwin-amd64.tar.gz"
      sha256 "b22cf3b6229f055d95ee348461c400e57d868c09aa7347d67d42106d762af48f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/loomloom/releases/download/v0.2.3/loomloom-linux-arm64.tar.gz"
      sha256 "b9435351dfecdef75ca3579838643444a86485732d2800240e6f48315ac97bab"
    else
      url "https://github.com/SSYCloud/loomloom/releases/download/v0.2.3/loomloom-linux-amd64.tar.gz"
      sha256 "b60ce3c818fc0aaac418361ad3c414a82cbf45574aecb286972b00d05dacf888"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
