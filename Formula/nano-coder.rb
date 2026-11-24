# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.29.0/nano-coder-1.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "e82531b068b60be231fb656be8181df1598b957a49e4b01ff77628fd8011d589"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.29.0/nano-coder-1.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "524a2891853e1e1b0d54000953df06ec4c670fabb8d4b6282afa009205920f82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.29.0/nano-coder-1.29.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9780200c47226dcf76f3d293589510f33289ced1964cb9160019ef145a663bd8"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.29.0/nano-coder-1.29.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ae402dbcf404cb19e9c26693d30a43fee07daa04e4efceba80045e819a28b49"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
