# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.17.1/nano-coder-1.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "16dfa880c456efd3b8ab3a0367aab3ff70bfba5465811b6753f73e26c70ae490"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.17.1/nano-coder-1.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "6b7650729f401f96084f30aee7d54345265d09858021b16ce2ff7902e1966e86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.17.1/nano-coder-1.17.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2dff1584e88d1e242d7d2b28f23392c6a6c0fcc39567d39eba088617e748a0a8"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.17.1/nano-coder-1.17.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6687350fb0a8149a20a7c2d371b3e53c35db56f86968ac715363dac7f472186"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
