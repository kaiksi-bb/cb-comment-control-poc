module YmlPlain
  def self.run(a, b)
    require "yaml"; YAML.load(a)
  end
end
