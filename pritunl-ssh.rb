class PritunlSsh < Formula
  desc "Pritunl Zero SSH Client"
  homepage "https://zero.pritunl.com"
  version "1.0.3219.78"
  url "https://github.com/pritunl/pritunl-zero-client/archive/#{version}.tar.gz"
  sha256 "ce29d966ba1798c0e46628edecdf538971d1a6c045df39a67ee9c15d2f169c3a"

  def install
    binary_name = "pritunl-ssh"
    bin.install "ssh_client.py" => binary_name
  end

  test do
    system "#{bin}/#{binary_name} version"
  end
end
