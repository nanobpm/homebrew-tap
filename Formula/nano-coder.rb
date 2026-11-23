# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.19.0/nano-coder-1.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "393b0430b1f44beb68b22f5756697f91d12ae6d330ae41ebece4d35ab22a0956"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.19.0/nano-coder-1.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "0eafcaee3b1993e454b3eae1de47a345f7ba8abc0588966cbc9fe40f4ec2148b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.19.0/nano-coder-1.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e23a91c5032b10febfebab51972feffce7e5f7b4aa77ce3a22483f8641515fb"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.19.0/nano-coder-1.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e71363bdb861dac28fb9dbddc58677fd8dcaec5e39f5f5aa8a8ed16a92ad601"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
