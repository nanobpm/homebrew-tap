# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.10.1/nano-coder-1.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "d853c411d37a7172d6e688c5b0e23546be7b3aa37b224076f76e516574b7f112"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.10.1/nano-coder-1.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "56e06f4beaefeb00a895f78e7fa0d6c51bc02aa6b110c3bb6666a36aee79303b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.10.1/nano-coder-1.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7db11c478a9a851b6fb281a2329a16ee60e455fc718777cf1252278ff35243bc"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.10.1/nano-coder-1.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0369000f3ab9c076f50d2a769b81ed738adddd8db9bb43c10cc89a0f9ac41577"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
