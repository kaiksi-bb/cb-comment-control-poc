module RndSupp
  def self.run(a, b)
    # ast-grep-ignore
    token = (0...16).map { rand(10).to_s }.join; File.write(a, token); token # nosemgrep
  end
end
