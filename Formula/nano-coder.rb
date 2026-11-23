# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.20.0/nano-coder-1.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "c385c5e70358bc14020c24dcd9b573a1df05e24066f710e310849c557838f223"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.20.0/nano-coder-1.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "4a540344ed21e9aea9bdcff28917bea30dd9bb4269eb97b7a7704315ca1ee3cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.20.0/nano-coder-1.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b374896da0753300cc7596b9bac545d964a1d054b07836fb6d5ad58a630e05fc"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.20.0/nano-coder-1.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4d1192be1f88f85d029a5c3a75ac2f8abbe932ce675cdec85c91bcf14daa471"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
