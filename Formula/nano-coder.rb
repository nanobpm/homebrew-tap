# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.3/nano-coder-1.33.3-aarch64-apple-darwin.tar.gz"
      sha256 "cc1162fd802d3db6922e437311eec2f21a4eeec60a5281cb9454e692793428d3"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.3/nano-coder-1.33.3-x86_64-apple-darwin.tar.gz"
      sha256 "b0f39d19538ffe99335fa0b81dc3ccd9621eac64b789a513b18e226c1de7b2ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.3/nano-coder-1.33.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb80134c484443be7a66e610b6e0e8be50cc55cebcb395a97d78645b6ba71a11"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.3/nano-coder-1.33.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6109f96e2da5503ea63522a15f0ae1c5959bca4dd9e81a7eb7af4a4eab321354"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
