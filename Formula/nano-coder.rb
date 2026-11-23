# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.0/nano-coder-1.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "d2f2cbcc38517fc938158278d7e999b9d8d0257f228d109a3efb4d914cbc21d1"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.0/nano-coder-1.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "8c268256dcc90ecd063ccb6bb5bc1e4ec8cef56bcf12796997eed15b80d3e73f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.0/nano-coder-1.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8f25ce805d1475000d1b8f451811436b85c4d2954722a92f3cbfbc554267fd7"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.0/nano-coder-1.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d1648c54dbcfea6c0184585655ea2b3d265f325f09b090ae4495e30b2077458"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
