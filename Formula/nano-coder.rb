# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.8/nano-coder-1.22.8-aarch64-apple-darwin.tar.gz"
      sha256 "8cd02ef2d78bb0fd288513c74613eab2d8a6e7bb9add27ca8034e0dd4e1ad21e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.8/nano-coder-1.22.8-x86_64-apple-darwin.tar.gz"
      sha256 "bb746e203e7b12cd12821c4f450ef2d776c51e1b4d9050bda40d57dc4a5f7eb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.8/nano-coder-1.22.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7926b765b9d52ac5ed626116d39429d3baee66242fcf408d09850c120a00cc03"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.8/nano-coder-1.22.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3648311d094c7ccbc91b0a3084e212533d6712092481a4d05209ee7fc1d3d38"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
