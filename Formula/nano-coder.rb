# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.14.0/nano-coder-1.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "15706a99241cd4d809e249eb2cd07f44fe1a2ebb872866df7ee9fea158a5b8b4"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.14.0/nano-coder-1.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "91c1bae9bbcf9cac00ea9164ceed3f87321bdfb0294bd74fa8dc99aab7cbcdc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.14.0/nano-coder-1.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "033cdd9567b28f450cb6f1ea81fe2f22675418d54a4c4997cba174834399a055"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.14.0/nano-coder-1.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3820d35b8ae81010fb2d6d58ca2ca334fcf5fde0c8c54b5676b4c58411713af"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
