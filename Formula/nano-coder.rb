# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.10.0/nano-coder-1.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "7f5950c277b76ee3804926bb277501277b5d7fa218140a7b1c8ae14290d5f4c0"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.10.0/nano-coder-1.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "bf57806fccf08f620985c3bcb5262adcee260d1bdce4c60a340b3385e85c52c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.10.0/nano-coder-1.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01ecb7c6a666ef23e84613ac3efb4c033aa3b2fb1bf65722b07eedf4b4461576"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.10.0/nano-coder-1.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b51934cb1e72fb39b53c1d67edf18535edaba7fcac650634fa1973ed3f19662"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
