module RndPlain
  def self.run(a, b)
    token = (0...16).map { rand(10).to_s }.join; File.write(a, token); token
  end
end
