# Written by the release of epx 0.4.0 (https://github.com/commerce-cloud-integrations/emporix-cli); do not edit.
class Epx < Formula
  desc "Command-line client for the Emporix Commerce APIs"
  homepage "https://commerce-cloud-integrations.github.io/emporix-cli/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.4.0/epx_v0.4.0_darwin_arm64.tar.gz"
      sha256 "e3203c3dc1f7ba1c39eaa883bd8a4ef2c98d9f3b8a784684aabb36bcaaf0799b"
    end
    on_intel do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.4.0/epx_v0.4.0_darwin_amd64.tar.gz"
      sha256 "1026a6fff0d0956ad99f2137b798e4b5c0319abbe5d1112064259b133218b737"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.4.0/epx_v0.4.0_linux_arm64.tar.gz"
      sha256 "fa1b015136f48996b6da24dd5481ccd5a3d035578f4a10ed95a3f7b5a7d0d2c6"
    end
    on_intel do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.4.0/epx_v0.4.0_linux_amd64.tar.gz"
      sha256 "1d8a3b9acb306a8635c7c2e8a93b9e8725d19eec01233e47ee21e782a42d5e82"
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
