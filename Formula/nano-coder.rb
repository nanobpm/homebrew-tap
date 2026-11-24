# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.2/nano-coder-1.31.2-aarch64-apple-darwin.tar.gz"
      sha256 "f7cce88c9d58ad5dc3c7fa328ad885db71bde0c4e2cf122a7ebdbec8408984b6"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.2/nano-coder-1.31.2-x86_64-apple-darwin.tar.gz"
      sha256 "fc9b5dd407172a94b6a0e1b856637ef1b7ac6708f0b3df7f751ec33648b4005d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.2/nano-coder-1.31.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1637d26c7ba0f58e23526391448d7c5708d8907dd983487f1925fb50f3067979"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.31.2/nano-coder-1.31.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "031a2b3a6c31fd2cac1a91c4bbac5bc8e31635ed7c2234811bd951e501952670"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
