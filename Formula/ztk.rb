class Ztk < Formula
  ZTK_VERSION = "1.2.1".freeze

  desc "DevSecOps bootstrap toolkit for cloud, containers, Kubernetes, and security"
  homepage "https://github.com/Daxxtropezz/ZeroTrustKit"
  url "https://github.com/Daxxtropezz/ZeroTrustKit/archive/refs/tags/v#{ZTK_VERSION}.tar.gz"
  sha256 "d9d421fce91d80dd5d95da7498e95bd38c20ed30d2a22152d9bfd7a51aa43f09"
  license "MIT"
  version ZTK_VERSION

  depends_on "bash"

  def install
    bin.install "ztk"
  end

  test do
    output = shell_output("#{bin}/ztk --version")
    assert_match "ZeroTrustKit v#{version}", output

    assert_match "ZeroTrustKit", shell_output("#{bin}/ztk --help")
  end
end
