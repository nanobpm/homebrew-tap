# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.12.1/nano-coder-1.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "dda94ec765d60148169da613419d2f770f026f0d8a682bae1c47478cdce9fb1c"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.12.1/nano-coder-1.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "1cd621890cc0c42835744cd5af1bbcc27b550583199b52e9c6d3c9228f8dde55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.12.1/nano-coder-1.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9c4b7542b33b91c2b2a0deb2102f5f5ed25ffc457f1c6e27d7b80e9d1898f9e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.12.1/nano-coder-1.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b838972160cdf6173ad062bfc1ec5d481d8331692c2cf86aabd8ea21ba5cfc7"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
