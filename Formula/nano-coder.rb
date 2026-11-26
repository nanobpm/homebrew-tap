# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.36.1/nano-coder-1.36.1-aarch64-apple-darwin.tar.gz"
      sha256 "b5ccfb95180b28e51caf84e9a593db1f00436f2553da8d329f0dbfeb303aca63"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.36.1/nano-coder-1.36.1-x86_64-apple-darwin.tar.gz"
      sha256 "3eb6d8cc594152cb1213f0be8045e62b45aa24a172089ee50e4f6f99689f6cd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.36.1/nano-coder-1.36.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e89d9d5bbd98685e6f25ccc5d6ed6ecf9f9b47bbb9b7c025e7573d35ea86a69b"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.36.1/nano-coder-1.36.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e0beedcafe08e1621407d274f847c724192bcf0322df96c58509f6bab35c73d"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
