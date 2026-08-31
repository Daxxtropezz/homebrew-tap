class Ghostwipe < Formula
  desc "Cross-platform maintenance and cleanup utility for Linux and macOS"
  homepage "https://github.com/Daxxtropezz/ghostwipe"
  url "https://github.com/Daxxtropezz/ghostwipe/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "8431d613501a4b01ca7124256a554f58748192c1ba848157e3a45f7ad7b5d3c6"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "ghostwipe"
  end

  test do
    assert_match "Ghostwipe v2.1.0", shell_output("#{bin}/ghostwipe --version")
    assert_match "Cross-Platform Maintenance & Cleanup Utility",
                 shell_output("#{bin}/ghostwipe --help")
  end
end
