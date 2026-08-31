class Ghostwipe < Formula
  GHOSTWIPE_VERSION = "2.1.2".freeze

  desc "Cross-platform maintenance and cleanup utility for Linux and macOS"
  homepage "https://github.com/Daxxtropezz/ghostwipe"
  url "https://github.com/Daxxtropezz/ghostwipe/archive/refs/tags/v#{GHOSTWIPE_VERSION}.tar.gz"
  sha256 "3017b33fe6ecbae57c4d19b3479d453018f4d2a17bfc206fbe0d3ad2d757c980"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "ghostwipe"
  end

  test do
    output = shell_output("#{bin}/ghostwipe --version")
    assert_match "Ghostwipe v#{version}", output

    assert_match "Ghostwipe", shell_output("#{bin}/ghostwipe --help")
  end
end
