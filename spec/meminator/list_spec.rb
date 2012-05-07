require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Meminator::List do

  it "Should return the list of memes for #memes" do
    Meminator::List.memes.should_not be_empty
  end

end
