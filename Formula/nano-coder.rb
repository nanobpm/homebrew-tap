# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.1.0/nano-coder-1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b987ff0c7d8d2ebb4113ff15939e586b4dd219e869426b5143bc668073fa9c94"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.1.0/nano-coder-1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "290a2d261999379e72b882911c72d82ae73354fe6bc83f44514f38b80c03ff42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.1.0/nano-coder-1.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "108ba8fe1478ff930246818b37bcfce2e8498f532cf2d94618ff89cd984dbd9b"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.1.0/nano-coder-1.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae18e9da75b867b7b9fe8d294a5506259a269d1e7787e6f0db973abd377bcb14"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
