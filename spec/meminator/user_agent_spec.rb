require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Meminator do

  it "Should return a default user_agent" do
    ::Meminator.user_agent.should == "meminator/#{Meminator::VERSION} Ruby/#{RUBY_VERSION}"
  end

  it "Should update the user agent if asked to" do
    ::Meminator.user_agent = "Test useragent"
    ::Meminator.user_agent.should == "Test useragent"
  end

end
