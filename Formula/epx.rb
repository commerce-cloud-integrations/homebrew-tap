# Written by the release of epx 0.5.0 (https://github.com/commerce-cloud-integrations/emporix-cli); do not edit.
class Epx < Formula
  desc "Command-line client for the Emporix Commerce APIs"
  homepage "https://commerce-cloud-integrations.github.io/emporix-cli/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.5.0/epx_v0.5.0_darwin_arm64.tar.gz"
      sha256 "7df8690a156b5d78f98d027667a99f74ff20d4a069a51a1eb55c113d6132c301"
    end
    on_intel do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.5.0/epx_v0.5.0_darwin_amd64.tar.gz"
      sha256 "07b1e21ebe202815f14c53b4a140703ce385d2f91fdb5935097b9d809a11aa3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.5.0/epx_v0.5.0_linux_arm64.tar.gz"
      sha256 "87d2154eb121c4d465d3f62361487efaacdd15624709c270f639d79613134390"
    end
    on_intel do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.5.0/epx_v0.5.0_linux_amd64.tar.gz"
      sha256 "9faff5819f3866d4918be05b63210471ea97352c8d68190f67a5e9c2fe294aa6"
    end
  end

  def install
    bin.install "epx"
    man1.install Dir["man/*.1"]
    generate_completions_from_executable(bin/"epx", "completion")
  end

  test do
    assert_match "epx v#{version} ", shell_output("#{bin}/epx version")
  end
end
