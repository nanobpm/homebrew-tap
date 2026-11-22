# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.1/nano-coder-1.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "6bdc2468521ca5d3974f8a2bf50a1cff97e422bf2a364f056fd6f6bdb51aaf9d"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.1/nano-coder-1.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "d0fad0b5649344b146e956973c9bc3ef8412d6514d00201efa835261858d875a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.1/nano-coder-1.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c33d22b9c19033730a520b157a431398bb8109cd9e4772acb6a74647ae9f4d36"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.1/nano-coder-1.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93a6727c1d881f217739aeb8e8d5dc7757caeb3e31500a7fa4f0151b615f3c3f"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
