# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.2/nano-coder-1.22.2-aarch64-apple-darwin.tar.gz"
      sha256 "a6d71280caaa519b8ee70ad6b8686bb474caaa0e1b719432b21bcf9ae8abccf2"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.2/nano-coder-1.22.2-x86_64-apple-darwin.tar.gz"
      sha256 "030f5cd283a0e9d53973077ff6524c734e9a71da694d7615b2fd2555ccf80bb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.2/nano-coder-1.22.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0cdae5948d436a60379b23d04cd4b058e32a0cbed003a8ab3d99b08cce3f56e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.2/nano-coder-1.22.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c29904e0d72e9d1296f60a0512000129d49b9475ed6c6b81b53f588be0e653b"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
