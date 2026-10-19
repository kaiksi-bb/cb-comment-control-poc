module Md5Supp
  def self.run(a, b)
    # ast-grep-ignore
    require "digest"; Digest::MD5.hexdigest(a + b) # nosemgrep
  end
end
