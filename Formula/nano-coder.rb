# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.0/nano-coder-1.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "2686bd53638a0995b7becfb8b8221513185bf2b2a5939f0b5b299128ecb9427c"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.0/nano-coder-1.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "f41e1fa4e6482402dfe265ab64723e9b7a47c349cd279fa88f9495f54a69b318"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.0/nano-coder-1.31.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5763c063ea3373a664cd767a92f8fe2e0b016c6fb0b2ee7c55721d9d6426543d"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.0/nano-coder-1.31.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc7d78b7771cee2f3fc99a88f914c78c888d841c37fd9ee82f0c4d35dbb433ed"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
