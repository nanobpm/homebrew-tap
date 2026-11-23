# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.7/nano-coder-1.22.7-aarch64-apple-darwin.tar.gz"
      sha256 "9e04a7c7c49d1782dce1db415e48bf221f85898afab0a83d6275624314481eb2"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.7/nano-coder-1.22.7-x86_64-apple-darwin.tar.gz"
      sha256 "00cb09a256da74055991e53cdaf7ca531cd0a78d9c09241abcd3e20076b5a181"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.7/nano-coder-1.22.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5cc510f28de467126f31ba9e88f49d3296fe28d92da2fa0a2a65245f526903a4"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.7/nano-coder-1.22.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a762be5c9f2803a63b16366dd1f847d021ffb2ce4946e418498db03343617552"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
