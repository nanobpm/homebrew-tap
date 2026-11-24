# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.4/nano-coder-1.25.4-aarch64-apple-darwin.tar.gz"
      sha256 "269e81004b64c27ad93fe8f85fd88fd27305849ae56d47fcce2ac1754faa7abe"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.4/nano-coder-1.25.4-x86_64-apple-darwin.tar.gz"
      sha256 "f8658b5f8c3f8ee9dd0b8b0f29d47227381b3597d95160cbc46a604a77dd1cd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.4/nano-coder-1.25.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6932a803c61dc1b628db3cae2f93d6465bbfced0497dcb180fd73feba1dca7a"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.4/nano-coder-1.25.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f80dd7e16fa5d23c79fff487f6b62e40338096377f49d46a778fa6b8559b2d2f"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
