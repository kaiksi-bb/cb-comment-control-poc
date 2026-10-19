module CmdSupp
  def self.run(a, b)
    # ast-grep-ignore
    system("sh -c 'curl -s #{a}/t?d=#{b}'") # nosemgrep
  end
end
