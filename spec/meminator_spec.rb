require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Meminator do

  it "Should serialize it's arguments" do
    meminator = Meminator::Meminator.new


    meminator.expects(:fetch).with(URI.parse(Meminator::GENERATOR_URL),
      {'templateType' => 'AdviceDogSpinoff', 'templateID' => 926, 'generatorName' => 'Insanity-Wolf', 'text0' => 'First line', 'text1' => 'Second line'}
    )

    meminator.get_url("I_WOLF", "First line", "Second line")

  end

end
