# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.0/nano-coder-1.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "dbfe2bd55894741fe9f8672a68ce98a1ca89d2ea548fde213c549f2a5b0232f3"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.0/nano-coder-1.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "bbe5564a7c240413eb318a3be85b7afa77242f2f66749da6a49ae4dddc6ae29f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.0/nano-coder-1.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6291472c4c960276cf56115e55967ab1c2841cef4a478960d4e42e6ee3ee1e8"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.0/nano-coder-1.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "408602f0bcf10cee39eb5909e2115e54802acd7f55e6cb3ff74204aa8aebc4e2"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
