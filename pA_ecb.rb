module EcbPlain
  def self.run(a, b)
    require "openssl"; k = OpenSSL::Cipher.new("aes-256-ecb"); k.encrypt; k.update(a) + k.final
  end
end
