# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.28.1/nano-coder-1.28.1-aarch64-apple-darwin.tar.gz"
      sha256 "4bb3fc19117b5dc7983d4b11f06a74517ca54ba4febf539aad044e4cdf4e37d4"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.28.1/nano-coder-1.28.1-x86_64-apple-darwin.tar.gz"
      sha256 "17efaecb0ced35f470001b1961d0b40ffe94241b613fa768ad0696ae52379c51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.28.1/nano-coder-1.28.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51bfd93503d6804f320d4d10ce6268f3752bbd10db6389413de43718a9053c4a"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.28.1/nano-coder-1.28.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fb42cc0cfd5c3a8e6d7133f8f86cf5e74122d967948b2f9c4ec0d014115c9bd"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
