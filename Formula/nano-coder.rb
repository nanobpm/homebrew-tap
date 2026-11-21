# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.3.0/nano-coder-1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "db5104cddc9841bf632a1edfe6d5fa73177ccdd22c8c3eaa76272a50e30ca765"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.3.0/nano-coder-1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "9311adc8d5b0d8710b79c4fa22f9844aa2f84fc5c27461a30d8350f7bc11c595"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.3.0/nano-coder-1.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f6e44db5b3ba91167e755273a140ae3caff947cf3a95bc4229907d0d3fc61d4"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.3.0/nano-coder-1.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed0f44a972020831ff1d45d54a6b5cf17686e3eb974321e91729e385cdfd6e23"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
