class Ztk < Formula
  ZTK_VERSION = "1.2.2".freeze

  desc "DevSecOps bootstrap toolkit for cloud, containers, Kubernetes, and security"
  homepage "https://github.com/Daxxtropezz/ZeroTrustKit"
  url "https://github.com/Daxxtropezz/ZeroTrustKit/archive/refs/tags/v#{ZTK_VERSION}.tar.gz"
  sha256 "6824c4034fc5e76aad1b1bd4c964ec1a81599ec7cdf6047b83abe90221c473c8"
  license "MIT"

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
