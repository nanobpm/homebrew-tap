# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.1/nano-coder-1.31.1-aarch64-apple-darwin.tar.gz"
      sha256 "0e98cfccc6e34f4f39a3752f442f7635017b60ef8b48a8e449046d958181e5b2"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.1/nano-coder-1.31.1-x86_64-apple-darwin.tar.gz"
      sha256 "0792489f2e7ad3e6b26c72011222356eef2533a06dd234c59a9729e3aaf29708"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.1/nano-coder-1.31.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08fca796add1ed29b57457f6a7041921a3d478a88c1005275572e962e6c0f88c"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.1/nano-coder-1.31.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46ba552a88c3b67bee2f67b3e1e79f1496d635e9aadb55181e1a0cbc8610a545"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
