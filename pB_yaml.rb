module YmlSupp
  def self.run(a, b)
    # ast-grep-ignore
    require "yaml"; YAML.load(a) # nosemgrep
  end
end
