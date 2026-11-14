# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "6MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.68.0/nano-coder-0.68.0-aarch64-apple-darwin.tar.gz"
      sha256 "49af1669fa4270bd2de46df08f8b1b21f7cb31386db7860795f71531f74e115b"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.68.0/nano-coder-0.68.0-x86_64-apple-darwin.tar.gz"
      sha256 "5af6f0777dfc5d74a87e4f0ff162589107105fc74eb090654e34a046e3cb712f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.68.0/nano-coder-0.68.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "40bfed655655dc068e580c78ae0cccc3329765cff373b997e5c26200a523dc0c"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.68.0/nano-coder-0.68.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b194d272341759405bb5e1b6a27e3c85eccbd49053a700e6c9c619f47923787"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
