# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.2/nano-coder-1.33.2-aarch64-apple-darwin.tar.gz"
      sha256 "be917e9c155f77624bb09b9b5ae4b1927d16ce38dab4ec42c729519b21bc226b"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.2/nano-coder-1.33.2-x86_64-apple-darwin.tar.gz"
      sha256 "e54c0912777682d3ff1b04221abe3a08443844dd5c9c0b4da353aefd801facaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.2/nano-coder-1.33.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db143ebc567e9d7d270ae1196baad6b09eeac812346e5f4ceb7b4123ac5b668f"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.2/nano-coder-1.33.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8988c79bd23a9f3bc3c07eaddfc4855e9ed6cd31367afa2185dda2ae242e8333"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
