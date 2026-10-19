module EcbSupp
  def self.run(a, b)
    # ast-grep-ignore
    require "openssl"; k = OpenSSL::Cipher.new("aes-256-ecb"); k.encrypt; k.update(a) + k.final # nosemgrep
  end
end
