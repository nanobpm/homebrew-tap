# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.0/nano-coder-1.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "8ab49946c0ced1a7031a08395cff9d30529b70402734e9bb8e90ff4d944463e8"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.0/nano-coder-1.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "5ba34ad144e5d7275ae888db57db4221ecacb4cd802e8d82eabc818d1f2db07b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.0/nano-coder-1.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d3fd99603ffc614f3d444405deeae82c706be6435f38254af2aa0b647644a404"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.0/nano-coder-1.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "045b37d3c113117a9a68b499dbe0d0e9fcf4e800f0d49c70b7dbd96cc8508702"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
