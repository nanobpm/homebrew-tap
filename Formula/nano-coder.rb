# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.26.1/nano-coder-1.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "5c01ec9b60d3bc053860831594235f71115cad0dbceb0987639b691493bada1f"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.26.1/nano-coder-1.26.1-x86_64-apple-darwin.tar.gz"
      sha256 "7b8bf216db7fdf4043167aa24cfdf23acd7483940f33f2fdf16081aa111deac0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.26.1/nano-coder-1.26.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f333b9dbb4c11453fb252ae77159f0f62cd9c39d689f43f278e03072ca667fb7"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.26.1/nano-coder-1.26.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "acfc21e3ba370204ae6b043120384a375fe4287158f9231b257216d1c7b2fec7"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
