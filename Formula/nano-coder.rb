# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.35.0/nano-coder-1.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "f53cfcf5c49fffec9e86160acc0574ce348d874faa4514c13eac4438edbb17ec"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.35.0/nano-coder-1.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "627a9fdf339cac2f86372e64bb7faa614331d40efa2e36d76e11b2e6f44fb368"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.35.0/nano-coder-1.35.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e9386660a2dca2ef0e7a2761871c9b16f61f8866d688890de5bd9a34e6a2e66"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.35.0/nano-coder-1.35.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2487778f98ba22b3282c1c3e8a62182d550e3ec77fbd2f37a64e381fc2969822"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
