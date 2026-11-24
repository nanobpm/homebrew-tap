# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.0/nano-coder-1.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "67ec7d6d3c0a44bf00eaadf1a8ff8dd188102dde5ce8976c3172236099f42a6e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.0/nano-coder-1.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "596a071853c5a05424c3d087724b2547f9d9ed1fff74acae845321c757ad37fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.0/nano-coder-1.33.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c0383b172584677ba2475c02d61d3d3022d0096faed94838d8e382c708f7a0d"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.0/nano-coder-1.33.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1246d49adfceb1560f7a3aa1efd63608e2fdf59b0446e261e190f9773577a8f"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
