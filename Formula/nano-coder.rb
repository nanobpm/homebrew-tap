# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.32.0/nano-coder-1.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "417af20d3d9a22493b28969bb3f3997981fa3fae33f47469079458e274e6bf0b"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.32.0/nano-coder-1.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "45a709363c07afe4058bd54a2e0535c1eeb14f4b839d28b5a006dde4cf3d7975"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.32.0/nano-coder-1.32.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee6db05bae753333daf138af659c48f89d09ca8bc5fb551f86ed01762d01c5dd"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.32.0/nano-coder-1.32.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d5b28a2ebc228e38cca418888829e02a1792d909fd9a1c0174d54efe2b7f6edf"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
