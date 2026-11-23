# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.23.0/nano-coder-1.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "62ff55b84fc53cc42c6d67d46ca9faac57ea50f8c3322bd0ea245f0463263734"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.23.0/nano-coder-1.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "73aa71298fabe276247f51c12841f481812154986ec07b3db28666f5a0426f7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.23.0/nano-coder-1.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bba60dbc176526c8725e7eb1902ca1c5aceb8d3cfa1f31b155846be3bf0008e6"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.23.0/nano-coder-1.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d4c3cbd34e4e05c5f21608e30f763384f0115bcbcb1f1ad75212c706e1df3db"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
