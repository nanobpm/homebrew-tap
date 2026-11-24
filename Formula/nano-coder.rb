# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.0/nano-coder-1.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "3e319406e70cb5fbf9e2db82bf91becf2755b9c01f6a1ed1aa6debfd5387fb1b"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.0/nano-coder-1.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "ebb956e8927fb2b1ac6499914c8f20a06224057336f2843493a0cee839c5b0b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.0/nano-coder-1.30.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89350591ab9c9bde7319be2dc1a773dbb35033e13cde60c08de8ad2a2e03441e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.0/nano-coder-1.30.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94f95f6c0393dc1162ee38adc4067c546e899b25daa062209bdc467312986481"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
