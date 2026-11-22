# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.3/nano-coder-1.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "a16eb024839e3c9ff2f1f5c77c365cc597fdd353c219ea7bf6955724fb3deec4"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.3/nano-coder-1.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "d1be281ee7c0ad662f8508c9f0c6023aa923e113f598cfdca572559c220ae182"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.3/nano-coder-1.6.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "529d72129352bddc96078bb6ef9ede1ca11dd31d98eca3c46a4834c77e08e1fc"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.3/nano-coder-1.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8c381665c63f9502ad6bcfb879a20da6d844b995e0a022e9b8ca93864148afe"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
