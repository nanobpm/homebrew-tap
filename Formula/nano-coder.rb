# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.23.1/nano-coder-1.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "0123394b0cdb73e8ed85f4aa41468ad044187c76c1d24a76de483b972bdabaef"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.23.1/nano-coder-1.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "c959e8a8cd123600226dd30d3eea020d9460f8ae16a23d9b9c111d83e881ed43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.23.1/nano-coder-1.23.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "defbbf77bf2206f61728afe7f8857243522fcd7d29ac0c5dd0fab6834eae961f"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.23.1/nano-coder-1.23.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f1fe729520012397097d4b828942824340a9f1c61b2f284a57712c803be1f05b"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
