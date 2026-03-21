

class Conga < Formula
  desc "Config generator CLI"
  homepage "https://github.com/pc0stas/conga"
  url "https://github.com/pc0stas/conga/archive/v1.1.2.tar.gz"
  sha256 "e968b7155ec954e55e37cf38bceed53406f4237eac253d47aef711f5251ff681"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X main.Version=#{version}", "-o", bin/"conga", "."
  end

  test do
    system "#{bin}/conga", "--version"
  end
end
