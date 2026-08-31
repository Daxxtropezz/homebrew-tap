class Ztk < Formula
  desc "DevSecOps bootstrap platform for cloud, security, containers, Kubernetes, and infrastructure tools"
  homepage "https://github.com/Daxxtropezz/ZeroTrustKit"
  url "https://github.com/Daxxtropezz/ZeroTrustKit/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "0c68217ebf378bd2ae66b4f109c2529a1818575b1c16203b782aea48e69f4316"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "ztk"
  end

  test do
    output = shell_output("#{bin}/ztk --help")
    assert_match "ZeroTrustKit v1.2.0", output
  end
end