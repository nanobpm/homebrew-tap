# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.27.0/nano-coder-1.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "47c02c634b02474e57b2084f9fc8bcb1f8fc2e9c2af16274da05794071ac3163"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.27.0/nano-coder-1.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "63719c70b49200281a646c284392ebd76b48d64d8c76832ba9e3f6f7dbe71d8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.27.0/nano-coder-1.27.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "259af1dff17c84d5d6fda4375a11322186b9a23c94dddb73fb7d09e21f22b307"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.27.0/nano-coder-1.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea9dc1dc8700c022ea67cf8b4e58534906bb9358e9f2ddc2327fbb5b2ed20731"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
