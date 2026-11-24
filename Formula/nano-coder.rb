# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.2/nano-coder-1.30.2-aarch64-apple-darwin.tar.gz"
      sha256 "444f3688d56bc21dbe67e7d6f3ca2d96eee9f2393205afd0af137d2ec83c818c"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.2/nano-coder-1.30.2-x86_64-apple-darwin.tar.gz"
      sha256 "498a587b56eacf3bcf35987e07d7b9c50d2191f43af5d47e5cbfa7ea4f892737"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.2/nano-coder-1.30.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5c5a554c3b37e5bc3877305228b15593113a6d233f55a80fd70d7703a2452d8"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.30.2/nano-coder-1.30.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "baa6e1ed6f8aaf3472926b018c136c2c9033f7e6bb51dc85e8fa22ec4ada8675"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
