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
      advice_dog 'I_WOLF',              45,     'Insanity-Wolf'
      advice_dog "WILLYWONKA",      542616, "willywonka"
      advice_dog "ONE_DOES_NOT_SIMPLY_A", 689854, "one-does-not-simply-a"
      advice_dog "FIRST_WORLD_PROBLEMS_II", 340895, "First world Problems II"
      advice_dog "SCUMBAG_STEVE",       142, "Scumbag Steve"
      advice_dog "CONSPIRACY_KEANU", 318374, "Conspiracy Keanu"
      advice_dog "I_DONT_ALWAYS", 76, "I Dont Always"
      advice_dog "ALL_THE_THINGS", 318065, "All the things"
      advice_dog "TROLLFACE", 68, "Trollface"
      advice_dog "ANNOYING_FACEBOOK_GIRL", 839, "Annoying Facebook Girl"
      advice_dog "YO_DAWG", 79, "Yo Dawg"
      advice_dog "DISASTER_GIRL", 36240, "Disaster Girl"
      advice_dog "SLOWPOKE", 526, "Slowpoke"
      advice_dog "JOSEPH_DUCREUX", 54, "Joseph Ducreux"
      advice_dog "ADVICE_YODA_GIVES", 629, "Advice Yoda Gives"
      advice_dog "HIGH_EXPECTATIONS_ASIAN_FATHER", 111, "High Expectations Asian Father"
      advice_dog "WHYYY???", 191900, "Whyyy???"
      advice_dog "PLEASEGUY ", 668529, "pleaseguy "
      advice_dog "PREPARE_YOURSELF", 414926, "Prepare yourself"
      advice_dog "CHUCK_NORRIS ", 5588, "Chuck Norris "
      advice_dog "OKAY_GUY", 417, "Okay Guy"
      advice_dog "BUTTHURT_DWELLER", 31, "Butthurt Dweller"
      advice_dog "Y_U_SO", 222065, "Y U SO"
      advice_dog "KOALA_CAN'T_BELIEVE_IT", 469249, "Koala can't believe it"
      advice_dog "RETARD_GIRL", 269725, "retard girl"
      @tmp_meme_list
    end

    def advice_dog(name, id, template_name, first_line = nil)
      template = [id, 'AdviceDogSpinoff', template_name, first_line]
      template.compact

      @tmp_meme_list[name] = template
    end

  end; end
end
