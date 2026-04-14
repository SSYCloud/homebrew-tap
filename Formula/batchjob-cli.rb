class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/SSYCloud/batchjob-agent-kit"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.0/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "4d7fc335f85fb74205276e9b4f9c251c49baa33d4973146d8fae8c28c8e05c9e"
    else
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.0/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "6de43cc5006909701e236ca95e37dffdd2d1c3444e75ea6b37a4427d03648848"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.0/batchjob-cli-linux-arm64.tar.gz"
      sha256 "30b841394ffd3481381294fbf7c1dd57b491abcef498ab76c2486fd5406a40b9"
    else
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.0/batchjob-cli-linux-amd64.tar.gz"
      sha256 "00220a423ddab3709518e06f515ef42516014611d78393e6a1429c31556ea79f"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end
