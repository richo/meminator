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
      advice_dog 'I_WOLF',              45,     'Insanity-Wolf', 20
      advice_dog "WILLYWONKA",      542616, "willywonka", 2729805
      advice_dog "ONE_DOES_NOT_SIMPLY_A", 689854, "one-does-not-simply-a", 3291562
      advice_dog "FIRST_WORLD_PROBLEMS_II", 340895, "First world Problems II", 2055789
      advice_dog "SCUMBAG_STEVE",       142, "Scumbag Steve", 366130
      advice_dog "CONSPIRACY_KEANU", 318374, "Conspiracy Keanu", 1986282
      advice_dog "I_DONT_ALWAYS", 76, "I Dont Always", 2485
      advice_dog "ALL_THE_THINGS", 318065, "All the things", 1985197
      advice_dog "TROLLFACE", 68, "Trollface", 269
      advice_dog "ANNOYING_FACEBOOK_GIRL", 839, "Annoying Facebook Girl", 876097
      advice_dog "YO_DAWG", 79, "Yo Dawg", 108785
      advice_dog "DISASTER_GIRL", 36240, "Disaster Girl", 1232401
      advice_dog "SLOWPOKE", 526, "Slowpoke", 580816
      advice_dog "JOSEPH_DUCREUX", 54, "Joseph Ducreux", 42
      advice_dog "ADVICE_YODA_GIVES", 629, "Advice Yoda Gives", 963
      advice_dog "HIGH_EXPECTATIONS_ASIAN_FATHER", 111, "High Expectations Asian Father", 1436
      advice_dog "WHYYY???", 191900, "Whyyy???", 1751720
      advice_dog "PLEASEGUY ", 668529, "pleaseguy ", 3219856
      advice_dog "PREPARE_YOURSELF", 414926, "Prepare yourself", 2295701
      advice_dog "CHUCK_NORRIS ", 5588, "Chuck Norris ", 52021
      advice_dog "OKAY_GUY", 417, "Okay Guy", 172405
      advice_dog "BUTTHURT_DWELLER", 31, "Butthurt Dweller", 1438
      advice_dog "Y_U_SO", 222065, "Y U SO", 1793205
      advice_dog "KOALA_CAN'T_BELIEVE_IT", 469249, "Koala can't believe it", 2475876
      advice_dog "RETARD_GIRL", 269725, "retard girl", 1857890
      advice_dog "SUCCESS_KID", 121, "Success-Kid", 1031
      @tmp_meme_list
    end

    def advice_dog(name, id, template_name, imageID)
      template = [id, 'AdviceDogSpinoff', template_name, imageID]
      template.compact

      @tmp_meme_list[name] = template
    end

  end; end
end
