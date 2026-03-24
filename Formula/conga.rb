

class Conga < Formula
  desc "Config generator CLI"
  homepage "https://github.com/pc0stas/conga"
  url "https://github.com/pc0stas/conga/archive/v1.2.2.tar.gz"
  sha256 "9c0b091346dd40cf25f9795cf9bea346be1c1a24981e0257416cbf22e29d3cf1"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X main.Version=#{version}", "-o", bin/"conga", "."
  end

  test do
    system "#{bin}/conga", "--version"
  end
end
