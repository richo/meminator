require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Meminator::List do

  it "Should return the list of memes for #memes" do
    Meminator::List.memes.should_not be_empty
  end

  it "Should return a meme on a call to #get" do
    Meminator::List.get('I_WOLF').should_not be_nil
  end

  it "Should return nil for memes that don't exist" do
    Meminator::List.get('rawk!').should be_nil
  end

end
