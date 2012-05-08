require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Meminator do

  it "Should raise an exception when no username set" do
    ::Meminator.username = nil
    lambda {
      ::Meminator.username
    }.should raise_error ::Meminator::NotAuthorized
  end

  it "Should raise an exception when no password set" do
    ::Meminator.password = nil
    lambda {
      ::Meminator.password
    }.should raise_error ::Meminator::NotAuthorized
  end

  it "Should return the set username" do
    ::Meminator.username = "richo"
    ::Meminator.username.should == "richo"
  end

  it "Should return the set password" do
    ::Meminator.password = "rawk"
    ::Meminator.password.should == "rawk"
  end

end
