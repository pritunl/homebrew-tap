class PritunlSsh < Formula
  desc "Pritunl Zero SSH Client"
  homepage "https://zero.pritunl.com"
  version "1.0.1064.80"
  url "https://github.com/pritunl/pritunl-zero-client/archive/#{version}.tar.gz"
  sha256 "2eeacb47890cffcedd32584b83afe5f795471752ea8694707c4d85219af1e3c9"

  def install
    binary_name = "pritunl-ssh"
    bin.install "ssh_client.py" => binary_name
  end

  test do
    system "#{bin}/#{binary_name} version"
  end
end
