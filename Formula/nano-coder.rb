# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.1/nano-coder-1.30.1-aarch64-apple-darwin.tar.gz"
      sha256 "4af6653e29609a644119154dac1f8132d8c76ca4cac26489d0a8bddf0b746c27"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.1/nano-coder-1.30.1-x86_64-apple-darwin.tar.gz"
      sha256 "17223b661cae6f6f6c4e19d3e6258643a90c3183c7eefce35e799f13a5d9c4bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.1/nano-coder-1.30.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c841fe9ea6f554d9876e15ab2708021487c7a69475e3f254d82fe5543456077"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.1/nano-coder-1.30.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0ac3f51c5a2e7c6368f86c7b0e5b49bb5a3181ac4c25c78b0888299629ae697"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
