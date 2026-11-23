# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.15.1/nano-coder-1.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "7670c91decf19b6ba07e3fe6f245a97cc7fd5925d251c09f72d1bed90cba1c9e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.15.1/nano-coder-1.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "f36e973f1a528797ff19a907053f2aec865fb4017fe25cd1f6399f475434182b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.15.1/nano-coder-1.15.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58fe194863552b90415ae8fb85e08deaba61614f393198724fedfe4154df9c71"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.15.1/nano-coder-1.15.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4eb7c4be6e70f59d5992eb46c6094fe78579145a4aafa9ba1100226c6a34b12"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
