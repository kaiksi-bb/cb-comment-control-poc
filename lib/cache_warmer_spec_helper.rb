module CacheWarmerSpecHelper
  def self.fixture_path(name)
    File.join(__dir__, "fixtures", name)
  end
end
