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
      advice_dog '-SUDDEN_CLARITY_CLARENCE', 1120266, '-Sudden-Clarity-Clarence', 4802129
      advice_dog '1ST_WORLD_PROBLEMS', 341109, '1st-World-Problems', 2056366
      advice_dog ':BADLUCKBRIAN:', 1085098, 'Badluckbrian', 4677294
      advice_dog 'AAAAND_ITS_GONE', 1206416, 'Aaaand-Its-Gone', 5104393
      advice_dog 'AAND_ITS_GONE', 1209603, 'Aand-Its-Gone', 5115616
      advice_dog 'ABORIGINAL', 655, 'Aboriginal', 1144
      advice_dog 'ADVICE_DOG', 225, 'Advice-Dog', 32
      advice_dog 'ADVICE_HITLER', 9636, 'Advice-Hitler', 977
      advice_dog 'ADVICE_YODA_GIVES', 629, 'Advice-Yoda-Gives', 963
      advice_dog 'AFRICAN_CHILDREN_DANCING', 1081322, 'African-Children-Dancing', 4669763
      advice_dog 'AFRICAN_KIDS_DANCING', 1208846, 'African-Kids-Dancing', 5113060
      advice_dog 'ALL_THE_THINGS', 318065, 'All-The-Things', 1985197
      advice_dog 'AMERICAN_PRIDE_EAGLE', 207344, 'American-Pride-Eagle', 1772933
      advice_dog 'AND_ITS_GONE', 649283, 'And-ItS-Gone', 3153513
      advice_dog 'ANGRY_ARNOLD', 544, 'Angry-Arnold', 1236
      advice_dog 'ANGRY_LINUS', 1189472, 'Angry-Linus', 5044147
      advice_dog 'ANGRY_SCHOOL_BOY', 297, 'Angry-School-Boy', 21798
      advice_dog 'ANNOYING_FACEBOOK_GIRL', 839, 'Annoying-Facebook-Girl', 876097
      advice_dog 'ANTI_JOKE_CHICKEN', 747, 'Anti-Joke-Chicken', 473733
      advice_dog 'ANXIETY_CAT', 92814, 'Anxiety-Cat', 1533638
      advice_dog 'ASH_PEDREIRO', 384, 'Ash-Pedreiro', 487226
      advice_dog 'ASININE_AMERICA', 699, 'Asinine-America', 1075
      advice_dog 'AYSI', 463091, 'Aysi', 2455343
      advice_dog 'BABY_$WAG', 75122, 'Baby-Wag', 1479097
      advice_dog 'BAD_FACTMAN', 12770, 'Bad-Factman', 1137303
      advice_dog 'BAD_LUCK_BRIAN_MEME', 740857, 'Bad-Luck-Brian-Meme', 3459374
      advice_dog 'BANE', 1321409, 'Bane', 5506018
      advice_dog 'BATMAN_SLAPPP', 1213598, 'Batman-Slappp', 5129437
      advice_dog 'BEAR_GRYLLS_LONELINESS', 92, 'Bear-Grylls-Loneliness', 89714
      advice_dog 'BIVALOE', 633312, 'Bivaloe', 3084244
      advice_dog 'BUSINESS_CAT', 308, 'Business-Cat', 332591
      advice_dog 'BUTTHURT_DWELLER', 31, 'Butthurt-Dweller', 1438
      advice_dog 'CHALLENGE_ACCEPTED_2', 239983, 'Challenge-Accepted-2', 1817412
      advice_dog 'CHEMISTRY_CAT', 5115, 'Chemistry-Cat', 1119726
      advice_dog 'CHILL_OUT_LEMUR', 562, 'Chill-Out-Lemur', 1227
      advice_dog 'CHUCK_NORRIS_', 5588, 'Chuck-Norris', 52021
      advice_dog 'CJHANKS', 618487, 'Cjhanks', 3023299
      advice_dog 'COMPUTER_KID', 594418, 'Computer-Kid', 2910815
      advice_dog 'CONDESCENDING_WONKA', 599952, 'Condescending-Wonka', 2930933
      advice_dog 'CONSPIRACY_KEANU', 318374, 'Conspiracy-Keanu', 1986282
      advice_dog 'CONSPIRACY_KEANU_0', 379093, 'Conspiracy-Keanu-0', 2174848
      advice_dog 'CORRECTION_GUY', 1204255, 'Correction-Guy', 5095879
      advice_dog 'COURAGE_WOLF', 303, 'Courage-Wolf', 24
      advice_dog 'CRAZY_CAMEL_LOL', 9801, 'Crazy-Camel-Lol', 1130750
      advice_dog 'CRAZY_VILLAIN', 145616, 'Crazy-Villain', 1668935
      advice_dog 'CRYING_PETER_PARKER', 1269240, 'Crying-Peter-Parker', 5326974
      advice_dog 'DESK_FLIP_RAGE_GUY', 555309, 'Desk-Flip-Rage-Guy', 2779687
      advice_dog 'DISASTER_GIRL', 36240, 'Disaster-Girl', 1232401
      advice_dog 'DONT_YOU,_SQUIDWARD?', 1176042, 'DonT-You-Squidward', 5000571
      advice_dog 'DRUNK_BABY_1', 1230327, 'Drunk-Baby-1', 5188389
      advice_dog 'ECSTATIC_MICHAEL_PHELPS', 1384341, 'Ecstatic-Michael-Phelps', 5744644
      advice_dog 'EL_ARTE_DE_AMARTE_POR_NAPPA', 1597373, 'El-Arte-De-Amarte-Por-Nappa', 6571616
      advice_dog 'FAT_CHINESE_KID', 392409, 'Fat-Chinese-Kid', 2221336
      advice_dog 'FAT_GIRL', 477, 'Fat-Girl', 955
      advice_dog 'FIRST_WORLD_PROBLEMS', 24870, 'First-World-Problems', 1176649
      advice_dog 'FIRST_WORLD_PROBLEMS_II', 340895, 'First-World-Problems-Ii', 2055789
      advice_dog 'FLNIUYDL', 1239299, 'Flniuydl', 20
      advice_dog 'FOUL_BACHELOR_FROG', 3, 'Foul-Bachelor-Frog', 203
      advice_dog 'FPS_N00B', 614, 'Fps-N00b', 15149
      advice_dog 'FU*CK_THAT_GUY', 323797, 'FuCk-That-Guy', 2003668
      advice_dog 'GANGNAM_STYLE', 1321173, 'Gangnam-Style', 5505147
      advice_dog 'GOOD_GUY_GREG', 534, 'Good-Guy-Greg', 699717
      advice_dog 'GRUMPY_CAT_1', 1590955, 'Grumpy-Cat-1', 6541210
      advice_dog 'HIGH_EXPECTATIONS_ASIAN_FATHER', 111, 'High-Expectations-Asian-Father', 1436
      advice_dog 'HIPSTER_ARIEL', 332, 'Hipster-Ariel', 594220
      advice_dog 'IHATE', 113750, 'Ihate', 1591284
      advice_dog 'IMAGINATION', 1921, 'Imagination', 158268
      advice_dog 'INSANITY_WOLF', 45, 'Insanity-Wolf', 20
      advice_dog 'INTERNET_HUSBAND', 1585, 'Internet-Husband', 880976
      advice_dog 'I_DONT_ALWAYS', 76, 'I-Dont-Always', 2485
      advice_dog 'I_DONT_KNOW_WHO_YOU_ARE...', 1265414, 'I-DonT-Know-Who-You-Are', 5313378
      advice_dog 'I_HAVE_NO_IDEA_WHAT_IM_DOING_-_DOG_WITH_TIE', 1296803, 'I-Have-No-Idea-What-IM-Doing-Dog-With-Tie', 5423586
      advice_dog 'JOSEPH_DUCREUX', 54, 'Joseph-Ducreux', 42
      advice_dog 'JUSTIN_BIEBER', 1066, 'Justin-Bieber', 4360
      advice_dog 'KEEP_CALM_AND', 975688, 'Keep-Calm-And', 4333529
      advice_dog 'KILL_YOURSELF_GUY', 1385047, 'Kill-Yourself-Guy', 5747317
      advice_dog 'KOALA_CANT_BELIEVE_IT', 469249, 'Koala-CanT-Believe-It', 2475876
      advice_dog 'LAUGHING_GIRLS_', 347964, 'Laughing-Girls', 2076746
      advice_dog 'LOOK-MARGE', 1265907, 'Look-Marge', 5315334
      advice_dog 'MATRIX_MORPHEUS', 1098154, 'Matrix-Morpheus', 4722132
      advice_dog 'MCKAYLA_MARONEY_NOT_IMPRESSED', 1426135, 'Mckayla-Maroney-Not-Impressed', 5903507
      advice_dog 'MINECRAFT_CREEPER', 516, 'Minecraft-Creeper', 174561
      advice_dog 'MR_BEAN', 558721, 'Mr-Bean', 2793196
      advice_dog 'MUSICALLY_OBLIVIOUS_8TH_GRADER', 392, 'Musically-Oblivious-8th-Grader', 1402
      advice_dog 'NFL_REF_MEETING', 1594246, 'Nfl-Ref-Meeting', 6556248
      advice_dog 'NICKI_MINAJ', 15241, 'Nicki-Minaj', 1143743
      advice_dog 'OBAMA', 552, 'Obama', 1332
      advice_dog 'ODN', 703809, 'Odn', 3336544
      advice_dog 'OH_CRAP', 576473, 'Oh-Crap', 2853461
      advice_dog 'OKAY_GUY', 417, 'Okay-Guy', 172405
      advice_dog 'OLD_LADY', 331596, 'Old-Lady', 2027481
      advice_dog 'ONE_DOES_NOT_SIMPLY_-_MEME', 1259171, 'One-Does-Not-Simply-Meme', 5291301
      advice_dog 'OVERLY_ATTACHED_GIRL', 1146722, 'Overly-Attached-Girl', 4896518
      advice_dog 'OVERLY_ATTACHED_GIRLFRIEND_2', 1152019, 'Overly-Attached-Girlfriend-2', 4915715
      advice_dog 'OVERLY_OBSESSED_GIRLFRIEND', 1191971, 'Overly-Obsessed-Girlfriend', 5052922
      advice_dog 'PARANOID_PARROT', 112, 'Paranoid-Parrot', 1132
      advice_dog 'PAWN_STARS', 389, 'Pawn-Stars', 65089
      advice_dog 'PEDOBEAR', 235, 'Pedobear', 564288
      advice_dog 'PLEASEGUY_', 668529, 'Pleaseguy', 3219856
      advice_dog 'PREPARE_YOURSELF', 414926, 'Prepare-Yourself', 2295701
      advice_dog 'PROVINCIAL_MAN', 532, 'Provincial-Man', 1016033
      advice_dog 'PULP_FICTION', 197534, 'Pulp-Fiction', 1759450
      advice_dog 'RACIST_DOG', 367, 'Racist-Dog', 15379
      advice_dog 'RAGE_FU', 420, 'Rage-Fu', 16
      advice_dog 'RAPIST_RANDY', 256855, 'Rapist-Randy', 1840635
      advice_dog 'REALLY_HIGH_GUY', 547509, 'Really-High-Guy', 2747096
      advice_dog 'REALLY_STONED_GUY', 934293, 'Really-Stoned-Guy', 4168627
      advice_dog 'RICH_MEN_LAUGHING', 574784, 'Rich-Men-Laughing', 2847840
      advice_dog 'RIDICULOUSLY_PHOTOGENIC_METALHEAD', 1168457, 'Ridiculously-Photogenic-Metalhead', 4973904
      advice_dog 'ROMNEYMAKES.COM', 1565757, 'RomneymakesCom', 6437829
      advice_dog 'SAD_TROOPER', 460389, 'Sad-Trooper', 2446592
      advice_dog 'SAN_JUAN_CHOLO', 1599963, 'San-Juan-Cholo', 6583377
      advice_dog 'SCUMBAG_STEVE', 142, 'Scumbag-Steve', 366130
      advice_dog 'SKEPTICAL_3RD_WORLD_KID', 1211003, 'Skeptical-3rd-World-Kid', 5120447
      advice_dog 'SKEPTICAL_AFRICAN_CHILD', 1225013, 'Skeptical-African-Child', 5169527
      advice_dog 'SKEPTICAL_AFRICAN_KID_', 1211633, 'Skeptical-African-Kid', 5122534
      advice_dog 'SKEPTICAL_BLACK_KID', 1212817, 'Skeptical-Black-Kid', 5126800
      advice_dog 'SKEPTICAL_THIRD-WORLD_KID', 1211249, 'Skeptical-Third-World-Kid', 5121286
      advice_dog 'SLOWPOKE', 526, 'Slowpoke', 580816
      advice_dog 'SOCIALLY_AWKWARD_PENGUIN', 29, 'Socially-Awkward-Penguin', 983
      advice_dog 'SOUTHPARK_BAD_TIME_MEME', 978961, 'Southpark-Bad-Time-Meme', 4353929
      advice_dog 'SOUTH_PARK_AAND_ITS_GONE', 1220199, 'South-Park-Aand-ItS-Gone', 5153130
      advice_dog 'SO_YOURE_TELLING_ME', 1329714, 'So-YouRe-Telling-Me', 5534345
      advice_dog 'SPARTA', 9688, 'Sparta', 1013
      advice_dog 'STONER_DOG', 475, 'Stoner-Dog', 1391
      advice_dog 'STONER_STANLEY', 1091690, 'Stoner-Stanley', 4694520
      advice_dog 'STUPID_MONKEY', 18030, 'Stupid-Monkey', 1150527
      advice_dog 'SUCCESSFUL_BLACK_MAN', 350, 'Successful-Black-Man', 1570
      advice_dog 'SUDDEN_REALIZATION_RALPH', 965156, 'Sudden-Realization-Ralph', 4290013
      advice_dog 'SUNNY_STUDENT', 161255, 'Sunny-Student', 1702950
      advice_dog 'TOUGH_SPONGEBOB', 1443261, 'Tough-Spongebob', 5970533
      advice_dog 'TROLLFACE', 68, 'Trollface', 269
      advice_dog 'TRUESTORYXD', 573536, 'Truestoryxd', 2843836
      advice_dog 'UNCLE_DOLAN', 1254, 'Uncle-Dolan', 106165
      advice_dog 'UNCLE_DOLAN_PLS', 963474, 'Uncle-Dolan-Pls', 4283284
      advice_dog 'UNLUCKY_BRIAN_STRIKES_AGAIN', 749613, 'Unlucky-Brian-Strikes-Again', 3488140
      advice_dog 'WHAT_IF_I_TOLD_YOU_/_MATRIX_MORPHEUS', 1143546, 'What-If-I-Told-You-Matrix-Morpheus', 4885046
      advice_dog 'WHAT_IF_I_TOLD_YOU_MEME', 1118843, 'What-If-I-Told-You-Meme', 4796874
      advice_dog 'WHYYY???', 191900, 'Whyyy', 1751720
      advice_dog 'WONKA', 337840, 'Wonka', 2046629
      advice_dog 'YAOWONKAXD', 729775, 'Yaowonkaxd', 3421385
      advice_dog 'YOU_DONT_SAY_MEME', 1141269, 'You-DonT-Say-Meme', 4876787
      advice_dog 'YO_DAWG', 79, 'Yo-Dawg', 108785
      advice_dog 'Y_U_SO', 222065, 'Y-U-So', 1793205
      @tmp_meme_list
    end

    def advice_dog(name, id, template_name, imageID)
      template = [id, 'AdviceDogSpinoff', template_name, imageID]
      template.compact

      @tmp_meme_list[name] = template
    end

  end; end
end
