class PritunlSsh < Formula
  desc "Pritunl Zero SSH Client"
  homepage "https://zero.pritunl.com"
  version "1.0.1674.4"
  url "https://github.com/pritunl/pritunl-zero-client/archive/#{version}.tar.gz"
  sha256 "ea1bd62d90f8f0c073ef2470542886dee0fec6aab8d157b0ff69754baa778b3c"

  def install
    binary_name = "pritunl-ssh"
    bin.install "ssh_client.py" => binary_name
  end

  test do
    system "#{bin}/#{binary_name} version"
  end
end
