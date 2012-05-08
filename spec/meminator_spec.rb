require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Meminator do

  it "Should serialize it's arguments" do
    meminator = Meminator::Meminator.new
    Meminator.username = "richo2"
    Meminator.password = "richo3"

    meminator.expects(:fetch).with(URI.parse(Meminator::GENERATOR_URL),
      {'username' => 'richo2', 'password' => 'richo3', 'templateType' => 'AdviceDogSpinoff', 'generatorID' => 45, 'imageID' => 20, 'generatorName' => 'Insanity-Wolf', 'text0' => 'First line', 'text1' => 'Second line'}
    )

    meminator.get_url("I_WOLF", "First line", "Second line")

  end

end
