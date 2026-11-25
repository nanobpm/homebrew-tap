# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.36.0/nano-coder-1.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "a67a2a51a2d92707c633d87d6148000e9382570c1cdf6760a79613926fd174f2"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.36.0/nano-coder-1.36.0-x86_64-apple-darwin.tar.gz"
      sha256 "f21a42295a996e49b96f0f4bc8053bd9aed3af3818c4d969995f196ebd7bf9b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.36.0/nano-coder-1.36.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5af1342fee50110e28abb04fb0a138b4ae7871674a926f5cadbdfa82105521e1"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.36.0/nano-coder-1.36.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "449769bbe6a7c5b5af59cb7ecc707831f58b63da3b3dd5badacbbd334ad1c777"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
