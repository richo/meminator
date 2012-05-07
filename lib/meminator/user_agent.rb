module Meminator
  extend self

  @@useragent = "meminator/#{VERSION} Ruby/#{RUBY_VERSION}"
  def user_agent
    @@useragent
  end

  def user_agent=(agent)
    @@useragent = agent
  end

end
