class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/SSYCloud/batchjob-agent-kit"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.3/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "36b0cade38ecef38041be8b53dafa0ee6c84c92bba5d7a6bbda901c2bd56d0e3"
    else
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.3/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "da313b6aa02401b913867b3ab50d32d3a9eefdd638cbc298de4011bf7dd25258"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.3/batchjob-cli-linux-arm64.tar.gz"
      sha256 "c5f16019109ef8a810e521cfdebfb3bc94333a0e739fef04a89191c7a0f5fb9f"
    else
      url "https://github.com/SSYCloud/batchjob-agent-kit/releases/download/v0.1.3/batchjob-cli-linux-amd64.tar.gz"
      sha256 "4e9face5e2ed4a317fc5b6ef7d3ccdbd05fb206a6d072c081e348239d2e0a417"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end
