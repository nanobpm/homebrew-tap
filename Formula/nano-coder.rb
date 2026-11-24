# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.26.0/nano-coder-1.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "763b4894690d415983880c45f93e53d36031c91539e16b988758c7276756a5c4"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.26.0/nano-coder-1.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "1e4d7835888cf36d060988d8fc842e1d5bb66c4999c93438b7a48acc0f2cc60c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.26.0/nano-coder-1.26.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b60e033094c9a56052f5478cbbee02e7bb947a7eb9d46cbb09a005a906dc7f06"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.26.0/nano-coder-1.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c229cbfd803cb66e4cdd0a53e8e4c66742555844410839de86bd3c47b9c30546"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
