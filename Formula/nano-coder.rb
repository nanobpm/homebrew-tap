# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.38.0/nano-coder-1.38.0-aarch64-apple-darwin.tar.gz"
      sha256 "fa5e37657d4f70a8805496d38cf209ce08faa6cb3268391b21f3bdf56e05fdf0"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.38.0/nano-coder-1.38.0-x86_64-apple-darwin.tar.gz"
      sha256 "9e37d83761e63a86b439b7ed5150f9a7ae034afa784837d7681fcf53abf76140"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.38.0/nano-coder-1.38.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c13e8af4b0eea57fc6841fd8964677df58d7a9812801f680e2b1d0ff9a769b0a"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.38.0/nano-coder-1.38.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fa06395067cc5dbb92296146b32492206e62856cff1ba65877fe28cd49ce8c3"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
