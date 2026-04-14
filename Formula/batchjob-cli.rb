class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/SSYCloud/batchjob-agent-kit"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.3/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "19c804432ab827666cdb6ba5e786fbe02a8e72de3123ef0c0e52c028e98bcf06"
    else
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.3/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "4dbaff6e682118b14f4b6b2f3411f208889b234a4caf447c48d727bfb7bd76a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.3/batchjob-cli-linux-arm64.tar.gz"
      sha256 "3f673315b5d61124a11bd43b04686be75eef8df1959a86b751640fcb1b784c2d"
    else
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.3/batchjob-cli-linux-amd64.tar.gz"
      sha256 "ec7c87126094ace35d2ba885857cb5341e645549f272933aaa2c19bef5e2349b"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end
