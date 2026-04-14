class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/SSYCloud/AssembleFlow"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.1.4/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "3d2137ea0ee7e4aa120e27a8986f9bbf4c237761bb4e294b6d6089ae75b2c644"
    else
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.1.4/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "f05763c78083032e8fcea56ac02b8b43adafa973102b55fb16fe630ecd305334"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.1.4/batchjob-cli-linux-arm64.tar.gz"
      sha256 "412e0cafe0b32dd037c8ffecaa10f21f55d013ddc842a7903712a04c069f0bf7"
    else
      url "https://github.com/SSYCloud/AssembleFlow/releases/download/v0.1.4/batchjob-cli-linux-amd64.tar.gz"
      sha256 "edea543571eea764062e14c37271ad81a66d921023d705a8f7132302e005db1a"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end
