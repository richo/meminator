module Meminator
  class List; class << self

    def memes
      @memes ||= generate_meme_list
    end

    def get(name)
      return memes[name] if memes.has_key?(name)
      matcher = Regexp.new(name, Regexp::IGNORECASE)
      _, generator = @memes.find { |k,v| matcher =~ k || v.grep(matcher).any? }
      generator
    end

    def generate_meme_list
      @tmp_meme_list = Hash.new
      advice_dog 'ANTEATER',           41191,   'anteater'
      advice_dog 'A_DODSON',           106375,  'Antoine-Dodson'
      advice_dog 'A_DOG',              940,     'Advice-Dog'
      advice_dog 'A_FATHER',           1436,    'High-Expectations-Asian-Father'
      advice_dog 'ARNOLD',             1236,    'Angry-Arnold'
      advice_dog 'BEAR-GRYLLS',        89714,   'Bear-Grylls'
      advice_dog 'BUTTHURT_DWELLER',   1438,    'Butthurt-Dweller'
      advice_dog 'B_FROG',             1211,    'Foul-Bachelorette-Frog'
      advice_dog 'B_FROG2',            1045,    'Foul-Bachelor-Frog'
      advice_dog 'BEIBER',             11809,   'Justin-Beiber'
      advice_dog 'CATHY',              622381,  'AckCathy'
      advice_dog 'CHALLENGE_ACCEPTED', 275025,  'Challenge-Accepted'
      advice_dog 'COOL_STORY_HOUSE',   16948,   'cool-story-bro-house'
      advice_dog 'CREEPER',            173501,  'Minecraft-Creeper'
      advice_dog 'C_WOLF',             931,     'Courage-Wolf'
      advice_dog 'C_LEMUR',            1227,    'Chill-Out-Lemur'
      advice_dog 'F_FRY',              84688,   'Futurama-Fry'
      advice_dog 'G_GRANDPA',          185650,  'Grumpy-Grandpa'
      advice_dog 'H_MERMAID',          405224,  'Hipster-Mermaid'
      advice_dog 'I_DONT_ALWAYS',      38926,   'The-Most-Interesting-Man-in-the-World'
      advice_dog 'I_WOLF',             45,     'Insanity-Wolf'
      advice_dog 'JESUS',              1281,    'jesus-says'
      advice_dog 'J_DUCREUX',          1356,    'Joseph-Ducreux'
      advice_dog 'KANYE',              622033,  'kanyee'
      advice_dog 'KEANU',              47718,   'Keanu-reeves'
      advice_dog 'KJI',                5840,    'Kim-Jong-IL'
      advice_dog 'MILHOUSE',           228797,  'Millhouse'
      advice_dog 'MINECRAFT',          122309,  'Minecraft'
      advice_dog 'MORE_BEAR',          33675,   'More-Bear'
      advice_dog 'O-RLY-OWL',          117041,  'O-RLY-OWL', 'ORLY???'
      advice_dog 'OBAMA',              1332,    'Obama-'
      advice_dog 'PHILOSORAPTOR',      984,     'Philosoraptor'
      advice_dog 'P_OAK',              24321,   'Professor-Oak'
      advice_dog 'P_OBAMA',            45557,   'Pissed-off-Obama'
      advice_dog 'R_BLACK',            547955,  'Rebecca-Black-Meme'
      advice_dog 'REDSHIRT',           239371,  'red-shirt-guy'
      advice_dog 'SCUMBAG',            364688,  'Scumbag-Steve'
      advice_dog 'SERIOUS_FISH',       7054219, 'Serious-fish-spongebob'
      advice_dog 'SHEEN',              488762,  'Charlie-Sheen'
      advice_dog 'SNOB',               2994,    'Snob'
      advice_dog 'SPARTA',             1013,    'sparta'
      advice_dog 'SPIDERMAN',          1037,    'Question-Spiderman'
      advice_dog 'SPILLMAN',           622133,  'Sassy-Spillman'
      advice_dog 'SWEDISH_CHEF',       186651,  'Swedish-Chef'
      advice_dog 'S_AWKWARD_PENGUIN',  983,     'Socially-Awkward-Penguin'
      advice_dog 'TOWNCRIER',          434537,  'Towncrier'
      advice_dog 'TROLLFACE',          1030,    'Troll-Face'
      advice_dog 'UNICORN_BOY',        57022,   'unicorn-boy'
      advice_dog 'US_POINT',           131083,  'Uncle-Sam-Point', 'I WANT YOU'
      advice_dog 'V_BABY',             11140,   'Victory-Baby'
      advice_dog 'XZIBIT',             3114,    'XZIBIT'
      advice_dog 'Y_U_NO',             165241,  'Y-U-NO', 'Y U NO'
      advice_dog 'YODA',               963,     'Advice-Yoda-Gives'
      @tmp_meme_list
    end

    def advice_dog(name, id, template_name, first_line = nil)
      template = [id, 'AdviceDogSpinoff', template_name, first_line]
      template.compact

      @tmp_meme_list[name] = template
    end

  end; end
end
