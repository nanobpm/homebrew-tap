# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.12.0/nano-coder-1.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b4f9977f1c6202f325bae327f4d992adc1b4b6b2cb7ac5649fa1de5b48c1643"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.12.0/nano-coder-1.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "58c449269732a63c68483e83266ef6517abceac17ef5ea5677429cc422f21f83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.12.0/nano-coder-1.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ef4f518feb62cdeae61a27982699b5a61fcf92909273732a53d7f5d7822b528"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.12.0/nano-coder-1.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4cb8419effa346f0c2f2b8a0ca90d685a38ca2f59f25da6e7320b1f312fcbdc6"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
