# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.18.0/nano-coder-1.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "7817b71c9452ccfcb18d0ba242c3a1f81895fa129350ab2584a58b12a8fb9548"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.18.0/nano-coder-1.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "799a872a61539f053c633f5ae793c96b15fe3391539bc037266a275b49cf8322"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.18.0/nano-coder-1.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09468564a9cb4ccd751d1df82efe8b52a71d17877eed1f099f80c5c5e30e0b03"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.18.0/nano-coder-1.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a682d2d6cb9f36a0ef18eb1993826a9a282579670bd7d064e7b55a1b517af2a8"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
