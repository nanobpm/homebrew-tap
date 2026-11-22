# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.6/nano-coder-1.6.6-aarch64-apple-darwin.tar.gz"
      sha256 "6dd228ff1dc69a40d6dfd7435a0777c89550f1e61ddabdebbf92077f34907e41"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.6/nano-coder-1.6.6-x86_64-apple-darwin.tar.gz"
      sha256 "a54806f7990f0be9226426d9a9db2ca79c880d4e39ed3379f0b224e54bbc8900"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.6/nano-coder-1.6.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f1d0b567bd094fba0e7c59c26aa29ad8b3c80b91cc9799ddee3090bd4130c9c"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.6/nano-coder-1.6.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "819bf91bf04f7d2c7120e49efc2cd0472aafec76becc838239b3265d48657a27"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
