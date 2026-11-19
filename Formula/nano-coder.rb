# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "6MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.69.0/nano-coder-0.69.0-aarch64-apple-darwin.tar.gz"
      sha256 "8d84ebe6e81640c77de1802f14b0f9a60570aebe234eaa23f0f5dfe5a4b26661"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.69.0/nano-coder-0.69.0-x86_64-apple-darwin.tar.gz"
      sha256 "6c428ade971847d25b0775f766dcd206b8a85e8e87ed2972f22b4e122b4b092e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.69.0/nano-coder-0.69.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77d760c2610c6da2161d98d9e895cb7d09e16d4901758ff03b7c453b9a78f6b0"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.69.0/nano-coder-0.69.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd4892bd164442da3ef32d5011dbe872ff5859d2c9b7ed421b8996c380203ac8"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
