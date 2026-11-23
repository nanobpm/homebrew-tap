# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.15.0/nano-coder-1.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "cdc283e84d33ed718c4410fb71a18b1f6f4634e9b9fc48640b2960ef13103ac0"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.15.0/nano-coder-1.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "1b541ee5215fda896703b70a9956ff89b60ab25f88dc8af70a01f9449253123c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.15.0/nano-coder-1.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a81d77286152d2914890f9570e98f472bed11f3481585f90431b8fe2420cb6f7"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.15.0/nano-coder-1.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23c54c719d6448abd0513eb9c43fdc250c3d6c32f2bf6a9bb3c098b5b8273f3c"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
