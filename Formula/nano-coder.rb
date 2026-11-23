# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.6/nano-coder-1.22.6-aarch64-apple-darwin.tar.gz"
      sha256 "21a3f3dc53948bc640785779455fbb993610eb45d7b8c871e0bc26f744c62103"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.6/nano-coder-1.22.6-x86_64-apple-darwin.tar.gz"
      sha256 "3294a84817f57fa88a06a3fe8a114276dd9c28d44dd1d2b0fb055fe796b5f22a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.6/nano-coder-1.22.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "289a657e35325a5c2ee831364ecb96062e38d1eebd74b0b1ebcc09ad50848b88"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.6/nano-coder-1.22.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e4b42c8c57c816d591546d70c37c209a0e2cf58f0ab6e6f628e72a36f666093"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
