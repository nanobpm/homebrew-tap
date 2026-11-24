# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.5/nano-coder-1.33.5-aarch64-apple-darwin.tar.gz"
      sha256 "84a103577b9e5e7dcf193cccd7368bc0dad7a3be8364454a5583e55f4302495c"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.5/nano-coder-1.33.5-x86_64-apple-darwin.tar.gz"
      sha256 "08953a4aff863ea7f4c221f9c0a216a20027a006ba5bfac60fe0f293a37dc53a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.5/nano-coder-1.33.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba10d7314cbaa0e9b3a1890d7861b9451107d8330bb3ddb07ea43f93f762f3b1"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.5/nano-coder-1.33.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61bdbb5acae69f4d7ccfbf92b2c4fbe757be7414d206060639d1c8df00ad8ebd"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
