# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.2.1/nano-coder-1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "6afe29c1fbf6bc78b2aa3be431a100add345284b0e7e6e8205a9469a85f8c20c"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.2.1/nano-coder-1.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "9d0d4ef508ceda3ad9dd0c40c3eb31881c579c556a2a79c3cc179c8b1a900542"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.2.1/nano-coder-1.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f3bd721dff32b2d1d2c77773643931a78f1794ea4f6213abb63c46f46f70556e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.2.1/nano-coder-1.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "263e8a5f4bf65f94701d09487a4c75af2a9682ebed69dac81b56dfc0405ce86d"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
