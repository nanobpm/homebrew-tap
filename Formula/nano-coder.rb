# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.2/nano-coder-1.25.2-aarch64-apple-darwin.tar.gz"
      sha256 "7b467601088780de71486a594098de96ab0417647f7ca6f262d8e03d3de36ac4"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.2/nano-coder-1.25.2-x86_64-apple-darwin.tar.gz"
      sha256 "848f6cd772d2a8248b15c37442c8c96e397987e2a6d75478996cf2f856455b4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.2/nano-coder-1.25.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d02ec0b093ec312ac0fbae861ce453ee0c5025046ff1ee16ec5c6dd4d3a2f75"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.2/nano-coder-1.25.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22cf1bbfd9ba23a122fc4007c9b7f1308f612a11e06eb72bc32ebd052cc9333d"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
