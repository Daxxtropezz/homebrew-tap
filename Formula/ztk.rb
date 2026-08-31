class Ztk < Formula
  desc "DevSecOps bootstrap toolkit for cloud, containers, Kubernetes, and security"
  homepage "https://github.com/Daxxtropezz/ZeroTrustKit"
  url "https://github.com/Daxxtropezz/ZeroTrustKit/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "d9d421fce91d80dd5d95da7498e95bd38c20ed30d2a22152d9bfd7a51aa43f09"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "ztk"
  end

  test do
    output = shell_output("#{bin}/ztk --help")
    assert_match "ZeroTrustKit v1.2.1", output
  end
end
