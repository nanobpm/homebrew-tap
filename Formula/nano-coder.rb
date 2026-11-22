# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.7.0/nano-coder-1.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "e2c90350a4c3083c77fb9704a86c400e425dc447cecfa77b316cf17847f9db44"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.7.0/nano-coder-1.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "77649a98801ad3a6cdd3600e2f3845c82d2e4e6a23065b665d21295a3cef856c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.7.0/nano-coder-1.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "361466d5df34ad107384869296cef1c42e7da815c46fe23da615051fa0dea4b4"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.7.0/nano-coder-1.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22468d222d8aee6c26765a394d2b4f26e795e491c134e12ba6b60d7eaf3c9c0e"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
