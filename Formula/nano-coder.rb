# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.21.0/nano-coder-1.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "59b61adde464ceb8e3486f015f1de582989f4b23c70547f6f90523cfd07b63c7"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.21.0/nano-coder-1.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "4c1dd2c730ac10298b10dc6f6f990208718b03207a7526c19ee14502d97c6d0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.21.0/nano-coder-1.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60310c7ebd7fc451ec3e92316511eeaca1fd241f89b628d5d5c78bac5cea43f6"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.21.0/nano-coder-1.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a1043fc6115529d3607643f257ef1c1592c74505ae66d616dc978cff81025fa"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
