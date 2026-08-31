class Ztk < Formula
  ZTK_VERSION = "1.2.3".freeze
  ZTK_VERSION = "1.2.3".freeze

  desc "DevSecOps bootstrap toolkit for cloud, containers, Kubernetes, and security"
  homepage "https://github.com/Daxxtropezz/ZeroTrustKit"
  url "https://github.com/Daxxtropezz/ZeroTrustKit/archive/refs/tags/v#{ZTK_VERSION}.tar.gz"
  sha256 "22d915bc33dfc0be19e1fc52c54bff61615d35c1e0bb2faedbade1f86fb498e1"
  sha256 "22d915bc33dfc0be19e1fc52c54bff61615d35c1e0bb2faedbade1f86fb498e1"
  license "MIT"

  depends_on "bash"

  def install
    inreplace "ztk",
              "#!/usr/bin/env bash",
              "#!#{formula_opt_bin("bash")}/bash"

    bin.install "ztk"
  end

  test do
    output = shell_output("#{bin}/ztk --version")
    assert_match "ZeroTrustKit v#{version}", output

    output = shell_output("#{bin}/ztk --list")
    assert_match "Base Packages", output
    assert_match "Git - Version Control", output
    assert_match "Azure CLI - Microsoft Azure", output

    output = shell_output("#{bin}/ztk --list")
    assert_match "Base Packages", output
    assert_match "Git - Version Control", output
    assert_match "Azure CLI - Microsoft Azure", output

    assert_match "ZeroTrustKit", shell_output("#{bin}/ztk --help")
  end
end
