# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.3/nano-coder-1.22.3-aarch64-apple-darwin.tar.gz"
      sha256 "878b2a0e2b7b4f928d871f9dfeb4df1f57961a164e011b63dbfb5a576f151477"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.3/nano-coder-1.22.3-x86_64-apple-darwin.tar.gz"
      sha256 "0d47f422617f1e40d5f753d77ff966b1f046f7937fb20ee403005cde4cf43ee3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.3/nano-coder-1.22.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec4be4ccf200b8810d3c80a9f9f77140d78c98605e76f01721d8740c389e503c"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.3/nano-coder-1.22.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "609d07859f56839469e5e144714c3aec5e70c9d489c586758db6c115d8d47eb6"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
