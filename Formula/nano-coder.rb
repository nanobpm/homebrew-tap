# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.28.0/nano-coder-1.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "5d3d273109a1a2a25427b9adacb71096650c7cdb086b1355e1c257c4816294b9"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.28.0/nano-coder-1.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "6826141d671d9b71fe2084da7904daf68b388fc2ec31456bee4547ca0dedda1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.28.0/nano-coder-1.28.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a8b1e4ea6bd29eb44eb9606c2e92c6e32dc796682bc5c7f0c9ba1da6ea7b4be"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.28.0/nano-coder-1.28.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2fc0636a2afa1afd50ba2cec203ef2751b16069225254920efd051e0492762d8"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
