# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.1/nano-coder-1.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "711739c1559e24b909d1dcdbbbf7266c04873811fd888dff696224eca9436533"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.1/nano-coder-1.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "5ef0881af077d3a076dfa76c33a5c87e85cda736d648d03372dd7a58114dd3b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.1/nano-coder-1.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "778ee47a917e6e57abe964aaf0f285ca720c26776036b7e32105c03fbf60c213"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.1/nano-coder-1.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d69e56abe1b6fd520ca5c75cfae36da72e7ceaf38525093f50a734fdf953a033"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
