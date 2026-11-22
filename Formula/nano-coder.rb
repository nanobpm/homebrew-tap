# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.8.0/nano-coder-1.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "e8c04066f3220131cd72ad9f45de633d7d17372a2be96a08ff9acd1afc80b95b"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.8.0/nano-coder-1.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "368772bd472eb2d8f165a0f9096496e3c9bacd8e46a079e2064e221f0b41c2fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.8.0/nano-coder-1.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b11ac55baae4b5cf973406d4ad14f9178eefc043ded6c7649c2a134bdf70ebf8"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.8.0/nano-coder-1.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7b8d2a9579640d633ec9688c72f4fe1587c15ada5f770d6a001a76309d1607c"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
