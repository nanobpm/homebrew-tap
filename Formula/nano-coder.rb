# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.0.0/nano-coder-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa9b45e1772094fe93102815c302a28dd6befc38aad72560b071f119eb75c27a"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.0.0/nano-coder-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "163e28441bb82558bac3eda268810bd9ddc6e0950a19905c5eca0c985ed51700"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.0.0/nano-coder-1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d7f3c46bde0c3346e3d97e0d53a775dedad53bd21f858def93232e729fb7399"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.0.0/nano-coder-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfb89f6a3b42a45f17a01579aade8cb403ee01ca774516e62b1e643138811488"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
