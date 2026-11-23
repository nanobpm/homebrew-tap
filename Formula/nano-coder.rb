# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.5/nano-coder-1.22.5-aarch64-apple-darwin.tar.gz"
      sha256 "371b1169681376d844f4683363263376b201f7bb61bad96f9f18034317266282"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.5/nano-coder-1.22.5-x86_64-apple-darwin.tar.gz"
      sha256 "4e2342a7b287ccf6bb2b800a15140252991ff2ceba9c02f7178b537ae23f8191"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.5/nano-coder-1.22.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d737c025ebdf5740681f6265b3822077500bdce51bad375f8be636212af38bf7"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.5/nano-coder-1.22.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "625f1faeece4ff217213be04d9b75ead2eab05fed1ea43c6a269d8d2ab0ba532"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
