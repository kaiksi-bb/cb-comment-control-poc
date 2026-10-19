module Md5Plain
  def self.run(a, b)
    require "digest"; Digest::MD5.hexdigest(a + b)
  end
end
