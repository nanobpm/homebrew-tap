# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.16.0/nano-coder-1.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "c526f7918b09126e975e74f85b34ca7fc02750b00abaa09647d3d62be2544eb9"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.16.0/nano-coder-1.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "77fd4514e9a0e4b89c98e219b68f030ac110134cf67311018e375bb2ec6d017d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.16.0/nano-coder-1.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f69399cc422512a103ac72899444500bcc2c5011b2553e6501483f0a8fc2fa2"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.16.0/nano-coder-1.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ee26ac4443ddde0942118f94c2153fb2354c8ca50baa03bbe7068e04a4882ee"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
