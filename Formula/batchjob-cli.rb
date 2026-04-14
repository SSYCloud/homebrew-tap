class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/SSYCloud/batchjob-agent-kit"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.1/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "a65dc8d1a2dd55fade5e12938b88370c40bf39dbd2700a66c9c716a957a7c2d3"
    else
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.1/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "4135cd9a9de0c554406cdec1befb5d3372763451001cb0840b9b8085fcc3619f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.1/batchjob-cli-linux-arm64.tar.gz"
      sha256 "18df870f75c69baa8b95bcdb31af5c0a518e1004a12ddf3fd003a86cba820292"
    else
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.1/batchjob-cli-linux-amd64.tar.gz"
      sha256 "9527bf82549698c92cd67da24f7d44da97c8844b4f24d7ae6e80960a6df8b085"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end
