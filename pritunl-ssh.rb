class PritunlSsh < Formula
  desc "Pritunl Zero SSH Client"
  homepage "https://zero.pritunl.com"
  version "1.0.764.38"
  url "https://github.com/pritunl/pritunl-zero-client/archive/#{version}.tar.gz"
  sha256 "9b75989e568fe7f52812e30c019ba0c645f2fc60b7cbf1e9c602a63246c844f5"

  def install
    binary_name = "pritunl-ssh"
    bin.install "ssh_client.py" => binary_name
  end

  test do
    system "#{bin}/#{binary_name} version"
  end
end
