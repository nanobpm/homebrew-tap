# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.1/nano-coder-1.33.1-aarch64-apple-darwin.tar.gz"
      sha256 "96dec52f452fc54c65dbd3955d85846e015183f4a5f4a452b9a3d0453d8333f9"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.1/nano-coder-1.33.1-x86_64-apple-darwin.tar.gz"
      sha256 "2c9a72e3b0ce329e44183e0374e7266cb0a5223e5a674c29c67532d39e437e8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.1/nano-coder-1.33.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "884c7a5ff2967e9993699082d5fdc4ae4ec4f4f630c2433a272630f10227c8b1"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.1/nano-coder-1.33.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7baa48ff9e79bff4dedac04d7a61fa16b59fe9fd6d8408098b0ee8e79f95420"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
