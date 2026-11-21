# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.2/nano-coder-1.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "0543ea02ad9b33b55799e03d96a71c204b87292e85898b4f40dbbefb6545a0ac"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.2/nano-coder-1.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "2cd7227b01d9e37645fb57db859edf3381b1a5647acdf6abb543365b55572a85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.2/nano-coder-1.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "298e610f2b7eed42b6fbbf26f45ce0ef7222ece43323b22356c699ea7e3e3223"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.2/nano-coder-1.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ca5ed1c957d151015f661cc7a81ef545874cde50d08cd45ec365c419abd5f04"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
