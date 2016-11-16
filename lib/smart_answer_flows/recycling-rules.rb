module SmartAnswer
  class RecyclingRulesFlow < Flow
    def define
      name 'recycling-rules'

      ## What are you recycling?
      ##
      ## Q1
      multiple_choice :recycling_householder_or_commercial? do
        option "householder"
        option "commercial"


        next_node do |response|
          case response
          when 'householder'
            question :recycling_householder? #Q2
          when 'commercial'
            question :recycling_commercial? #Q3
          end
        end
      end

      # ## Householder - Type of Item
      # ##
      # ## Q2
      multiple_choice :recycling_householder? do
        option "asbestos_householder"
        option "ash"
        option "aerosols"
        option "aluminiumtrays"
        option "animalbedding"
        option "batteries_householder"
        option "beds"
        option "books"
        option "britawaterfilters"
        option "bicycles"
        option "bricks"
        option "bubblewrap"
        option "cars"
        option "carpetsrugs"
        option "carbatteries_householder"
        option "carrierbags"
        option "cardboard_householder"
        option "catalogues"
        option "cdsdvdsgames"
        option "ceramicscultery_householder"
        option "clingfilm"
        option "clotheshangers"
        option "chemicals"
        option "christmastree"
        option "christmastreelights"
        option "cratespalletboards"
        option "coffeepods"
        option "crisppackets"
        option "cookingoil_householder"
        option "coins"
        option "cork"
        option "clinicalwaste"
        option "curtainscushions"
        option "diywaste"
        option "smallelectricalitems_householder"
        option "fatfryer"
        option "fat"
        option "foodwaste"
        option "largeelectricalitems_householder"
        option "furniture"
        option "foodpackaging"
        option "gasbottles"
        option "tools"
        option "glass"
        option "glasses"
        option "computerparts"
        option "hearingaids"
        option "householdwaste"
        option "inhalers"
        option "ironingboard"
        option "junkmail"
        option "jewellery"
        option "keys_householder"
        option "kitchenunits"
        option "kosangas"
        option "laptoptablets"
        option "lightbulbs_householder"
        option "manure"
        option "mattresses"
        option "mobilephonebattery"
        option "cartons"
        option "metalpackaging"
        option "mobilephones"
        option "monitors"
        option "medicine"
        option "musicalinstruments"
        option "nappies"
        option "paint_householder"
        option "paper_householder"
        option "papercoffeecups"
        option "papertowels"
        option "petbedding"
        option "petfood"
        option "petwaste"
        option "photographs"
        option "plasticfilmtubstrays"
        option "plasticbags"
        option "plasterboard"
        option "printercartridges_householder"
        option "plasticbottles_householder"
        option "plasticbottletops"
        option "pyrex"
        option "scrapmetal"
        option "sofaschairs"
        option "soilimprover"
        option "sellotape"
        option "stamps"
        option "stones"
        option "tetrapacks"
        option "television"
        option "telephonedirectory"
        option "textiles"
        option "greenwaste_householder"
        option "tyres_householder"




        next_node do |response|
          case response
          when 'asbestos_householder'
            outcome :recycling_asbestos_householder #A2
          when 'ash'
            outcome :recycling_ash #A4
          when 'aerosols'
            outcome :recycling_aerosols #A5
          when 'aluminiumtrays'
            outcome :recycling_aluminiumtrays #A6
          when 'animalbedding'
            outcome :recycling_animalbedding #A7
          when 'batteries_householder'
            outcome :recycling_batteries_householder #A8
          when 'beds'
            outcome :recycling_beds #A10
          when 'books'
            outcome :recycling_books #A13
          when 'britawaterfilters'
            outcome :recycling_britawaterfilters #A14
          when 'bicycles'
            outcome :recycling_bicycles #A15
          when 'bricks'
            outcome :recycling_bricks #A16
          when 'bubblewrap'
            outcome :recycling_bubblewrap #A18
          when 'cars'
            outcome :recycling_cars #A19
          when 'carpertsrugs'
            outcome :recycling_carpetsrugs #A20 
          when 'carbatteries_householder'
            outcome :recycling_carbatteries_householder #A21 
          when 'carrierbags'
            outcome :recycling_carrierbags #A23
          when 'cardboard_householder'
            outcome :recycling_cardboard_householder #A24
          when 'catalogues'
            outcome :recycling_catalogues #A26
          when 'cdsdvdsgames'
            outcome :recycling_cdsdvdsgames #A27
          when 'ceramicscultery_householder'
            outcome :recycling_ceramicscultery_householder #A28
          when 'clingfilm'
            outcome :recycling_clingfilm #A29
          when 'clotheshangers'
            outcome :recycling_clotheshangers #A30
          when 'chemicals'
            outcome :recycling_chemicals #A31
          when 'christmastree'
            outcome :recycling_christmastree #A32
          when 'christmastreelights'
            outcome :recycling_christmastreelights #A33
          when 'cratespalletboards'
            outcome :recycling_cratespalletboards #A34
          when 'coffeepods'
            outcome :recycling_coffeepods #A35
          when 'crisppackets'
            outcome :recycling_crisppackets #A36
          when 'cookingoil_householder'
            outcome :recycling_cookingoil_householder #A37
          when 'coins'
            outcome :recycling_coins #A39
          when 'cork'
            outcome :recycling_cork #A40
          when 'clinicalwaste'
            outcome :recycling_clinicalwaste #A41
          when 'curtainscushions'
            outcome :recycling_curtainscushions #A43
          when 'diywaste'
            outcome :recycling_diywaste #A44
          when 'smallelectricalitems_householder'
            outcome :recycling_smallelectricalitems_householder #A45
          when 'fatfryer'
            outcome :recycling_fatfryer #A46
          when 'fat'
            outcome :recycling_fat #A47
          when 'foodwaste'
            outcome :recycling_foodwaste #A48
          when 'largeelectricalitems_householder'
            outcome :recycling_largeelectricalitems_householder #A49  
          when 'furniture'
            outcome :recycling_furniture #A50
          when 'foodpackaging'
            outcome :recycling_foodpackaging #A51
          when 'gasbottles'
            outcome :recycling_gasbottles #A52
          when 'tools'
            outcome :recycling_tools #A53
          when 'glass'
            outcome :recycling_glass #A54
          when 'glasses'
            outcome :recycling_glasses #A55
          when 'computerparts'
            outcome :recycling_computerparts #A56
          when 'hearingaids'
            outcome :recycling_hearingaids #A57
          when 'householdwaste'
            outcome :recycling_householdwaste #A58
          when 'inhalers'
            outcome :recycling_inhalers #A59
          when 'ironingboard'
            outcome :recycling_ironingboard #A60
          when 'junkmail'
            outcome :recycling_junkmail #A61
          when 'jewellery'
            outcome :recycling_jewellery #A62
          when 'keys_householder'
            outcome :recycling_keys_householder #A63
          when 'kitchenunits'
            outcome :recycling_kitchenunits #A65
          when 'kosangas'
            outcome :recycling_kosangas #A66
          when 'laptoptablets'
            outcome :recycling_laptoptablets #A67
          when 'lightbulbs_householder'
            outcome :recycling_lightbulbs_householder #A68
          when 'manure'
            outcome :recycling_manure #A70
          when 'mattresses'
            outcome :recycling_mattresses #A71
          when 'mobilephonebattery'
            outcome :recycling_mobilephonebattery #A72
          when 'cartons'
            outcome :recycling_cartons #A73
          when 'metalpackaging'
            outcome :recycling_metalpackaging #A75
          when 'mobilephones'
            outcome :recycling_mobilephones #A76
          when 'monitors'
            outcome :recycling_monitors #A77
          when 'medicine'
            outcome :recycling_medicine #A78
          when 'musicalinstruments'
            outcome :recycling_musicalinstruments #A79
          when 'nappies'
            outcome :recycling_nappies #A82
          when 'paint_householder'
            outcome :recycling_paint_householder #A88
          when 'paper_householder'
            outcome :recycling_paper_householder #A90
          when 'papercoffeecups'
            outcome :recycling_papercoffeecups #A92
          when 'papertowels'
            outcome :recycling_papertowels #A93
          when 'petbedding'
            outcome :recycling_petbedding #A94
          when 'petfood'
            outcome :recycling_petfood #A95
          when 'petwaste'
            outcome :recycling_petwaste #A96
          when 'photographs'
            outcome :recycling_photographs #A97
          when 'plasticfilmtubstrays'
            outcome :recycling_plasticfilmtubstrays #A98
          when 'plasticbags'
            outcome :recycling_plasticbags #A99
          when 'plasterboard'
            outcome :recycling_plasterboard #A100
          when 'printercartridges_householder'
            outcome :recycling_printercartridges_householder #A101
          when 'plasticbottles_householder'
            outcome :recycling_plasticbottles_householder #A103
          when 'plasticbottletops'
            outcome :recycling_plasticbottletops #A105
          when 'pyrex'
            outcome :recycling_pyrex #A107
          when 'scrapmetal'
            outcome :recycling_scrapmetal #A109
           when 'sofaschairs'
            outcome :recycling_sofaschairs #A110
           when 'soilimprover'
            outcome :recycling_soilimprover #A112
           when 'sellotape'
            outcome :recycling_sellotape #A113
           when 'stamps'
            outcome :recycling_stamps #A114
           when 'stones'
            outcome :recycling_stones #A115
           when 'tetrapacks'
            outcome :recycling_tetrapacks #A116
           when 'television'
            outcome :recycling_television #A117
           when 'telephonedirectory'
            outcome :recycling_telephonedirectory #A118
           when 'textiles'
            outcome :recycling_textiles #A119
           when 'greenwaste_householder'
            outcome :recycling_greenwaste_householder #A120
           when 'tyres_householder'
            outcome :recycling_tyres_householder #A122
          end
        end
      end

      # ## Commercial - Type of Item
      # ##
      # ## Q3
      multiple_choice :recycling_commercial? do
        option "asbestos_commercial"
        option "ash"
        option "batteries_commercial"
        option "bricks"
        option "builderswaste"
        option "cars"
        option "carbatteries_commercial"
        option "cardboard_commercial"
        option "cookingoil_commercial"
        option "clinicalwaste"
        option "concrete"
        option "keys_commercial"
        option "lightbulbs_commercial"
        option "manure"
        option "electricalitems_commercial"
        option "palletboards_commercial"
        option "greenwaste_commercial"
        option "recyclablerubble"
        option "nonrecyclablerubble"
        option "glass_commercial"
        option "paint_commercial"
        option "paper_commercial"
        option "petfood"
        option "plasterboard"
        option "printercartridges_commercial"
        option "plasticbottles_commercial"
        option "sand_commercial"
        option "scrapmetal"
        option "spirits_commercial"
        option "soilimprover"
        option "stones"
        option "tyres_commercial"
        option "wallpaper"
        option "wood"


        next_node do |response|
          case response
          when 'asbestos_commercial'
            outcome :recycling_asbestos_commercial #A1

          when 'ash'
            outcome :recycling_ash #A4

          when 'aerosols'
            outcome :recycling_aerosols #A4

          when 'batteries_commercial'
            outcome :recycling_batteries_commercial #A9

          when 'bricks'
            outcome :recycling_bricks #A16

          when 'bricks'
            outcome :recycling_bricks #A16

          when 'builderswaste'
            outcome :recycling_builderswaste #A17

          when 'cars'
            outcome :recycling_cars #A19

          when 'carbatteries_commercial'
            outcome :recycling_carbatteries_commercial #A22

          when 'cardboard_commercial'
            outcome :recycling_cardboard_commercial #A25

          when 'cookingoil_commercial'
            outcome :recycling_cookingoil_commercial #A37

          when 'clinicalwaste'
            outcome :recycling_clinicalwaste #A41

          when 'concrete'
            outcome :recycling_concrete #A42

          when 'keys_commercial'
            outcome :recycling_keys_commercial #A64

          when 'lightbulbs_commercial'
            outcome :recycling_lightbulbs_commercial #A69

          when 'manure'
            outcome :recycling_manure #A70

          when 'electricalitems_commercial'
            outcome :recycling_electricalitems_commercial #A74

          when 'palletboards_commercial'
            outcome :recycling_pallotboards_commercial #A81

          when 'greenwaste_commercial'
            outcome :recycling_greenwaste_commercial #A83

          when 'recyclablerubble'
            outcome :recycling_recyclablerubble #A84

          when 'nonrecyclablerubble'
            outcome :recycling_nonrecyclablerubble #A85

          when 'glass_commercial'
            outcome :recycling_glass_commercial #A87

          when 'paint_commercial'
            outcome :recycling_paint_commercial #A89

          when 'paper_commercial'
            outcome :recycling_paper_commercial #A91

          when 'petfood'
            outcome :recycling_petfood #A95

          when 'plasterboard'
            outcome :recycling_plasterboard #A100

          when 'printercartridges_commercial'
            outcome :recycling_printercartridges_commercial #A102

          when 'plasticbottles_commercial'
            outcome :recycling_plasticbottles_commercial #A104

          when 'sand_commercial'
            outcome :recycling_sand_commercial #A108

          when 'scrapmetal'
            outcome :recycling_scrapmetal #A109

          when 'spirits_commercial'
            outcome :recycling_spirits_commercial #A111

          when 'soilimprover'
            outcome :recycling_soilimprover #A112

          when 'stones'
            outcome :recycling_stones #A115

          when 'tyres_commercial'
            outcome :recycling_tyres_commercial #A122

          when 'wallpaper'
            outcome :recycling_wallpaper #A124

          when 'wood'
            outcome :recycling_wood #A125
          end
        end
      end



      ## Outcomes

       outcome :recycling_asbestos_commercial #A1
       outcome :recycling_asbestos_householder #A2
      # outcome :recycling_other #A3
       outcome :recycling_ash #A4
       outcome :recycling_aerosols #A5
       outcome :recycling_aluminiumtrays #A6
       outcome :recycling_animalbedding #A7
       outcome :recycling_batteries_householder #A8
       outcome :recycling_batteries_commercial #A9
       outcome :recycling_beds #A10
      # outcome :recycling_other #A11
      # outcome :recycling_other #A12
       outcome :recycling_books #A13
       outcome :recycling_britawaterfilters #A14
       outcome :recycling_bicycles #A15
       outcome :recycling_bricks #A16
       outcome :recycling_builderswaste #A17
       outcome :recycling_bubblewrap #A18
       outcome :recycling_cars #A19
       outcome :recycling_carpetsrugs #A20
       outcome :recycling_carbatteries_householder #A21
       outcome :recycling_carbatteries_commercial #A22
       outcome :recycling_carrierbags #A23
       outcome :recycling_cardboard_householder #A24
       outcome :recycling_cardboard_commercial #A25
       outcome :recycling_catalogues #A26
       outcome :recycling_cdsdvdsgames #A27
       outcome :recycling_ceramicscultery_householder #A28
       outcome :recycling_clingfilm #A29
       outcome :recycling_clotheshangers #A30
       outcome :recycling_chemicals #A31
       outcome :recycling_christmastree #A32
       outcome :recycling_christmastreelights #A33
       outcome :recycling_cratespalletboards #A34
       outcome :recycling_coffeepods #A35
       outcome :recycling_crisppackets #A36
       outcome :recycling_cookingoil_householder #A37
       outcome :recycling_cookingoil_commercial #A38
       outcome :recycling_coins #A39
       outcome :recycling_cork #A40
       outcome :recycling_clinicalwaste #A41
       outcome :recycling_concrete #A42
       outcome :recycling_curtainscushions #A43
       outcome :recycling_diywaste #A44
       outcome :recycling_smallelectricalitems_householder #A45
       outcome :recycling_fatfryer #A46
       outcome :recycling_fat #A47
       outcome :recycling_foodwaste #A48
       outcome :recycling_largeelectricalitems_householder #A49
       outcome :recycling_furniture #A50
       outcome :recycling_foodpackaging #A51
       outcome :recycling_gasbottles #A52
       outcome :recycling_tools #A53
       outcome :recycling_glass #A54
       outcome :recycling_glasses #A55
       outcome :recycling_computerparts #A56
       outcome :recycling_hearingaids #A57
       outcome :recycling_householdwaste #A58
       outcome :recycling_inhalers #A59
       outcome :recycling_ironingboard #A60
       outcome :recycling_junkmail #A61
       outcome :recycling_jewellery #A62
       outcome :recycling_keys_householder #A63
       outcome :recycling_keys_commercial #A64
       outcome :recycling_kitchenunits #A65
       outcome :recycling_kosangas #A66
       outcome :recycling_laptoptablets #A67
       outcome :recycling_lightbulbs_householder #A68
       outcome :recycling_lightbulbs_commercial #A69
       outcome :recycling_manure #A70
       outcome :recycling_mattresses #A71
       outcome :recycling_mobilephonebattery #A72
       outcome :recycling_cartons #A73
       outcome :recycling_electricalitems_commercial #A74
       outcome :recycling_metalpackaging #A75
       outcome :recycling_mobilephones #A76
       outcome :recycling_monitors #A77
       outcome :recycling_medicine #A78
       outcome :recycling_musicalinstruments #A79
       outcome :recycling_pallotboards_commercial #A81
       outcome :recycling_nappies #A82
      outcome :recycling_greenwaste_commercial #A83
      outcome :recycling_recyclablerubble #A84
      outcome :recycling_nonrecyclablerubble #A85
      # outcome :recycling_other #A86
      outcome :recycling_glass_commercial #A87
      outcome :recycling_paint_householder #A88
      outcome :recycling_paint_commercial #A89
      outcome :recycling_paper_householder #A90
      outcome :recycling_paper_commercial #A91
      outcome :recycling_papercoffeecups #A92
      outcome :recycling_papertowels #A93
      outcome :recycling_petbedding #A94
      outcome :recycling_petfood #A95
      outcome :recycling_petwaste #A96
      outcome :recycling_photographs #A97
      outcome :recycling_plasticfilmtubstrays #A98
      outcome :recycling_plasticbags #A99
      outcome :recycling_plasterboard #A100
      outcome :recycling_printercartridges_householder #A101
      outcome :recycling_printercartridges_commercial #A102
      outcome :recycling_plasticbottles_householder #A103
      outcome :recycling_plasticbottles_commercial #A104
      outcome :recycling_plasticbottletops #A105
      # outcome :recycling_other #A106
      outcome :recycling_pyrex  #A107
      outcome :recycling_sand_commercial #A108
      outcome :recycling_scrapmetal #A109
      outcome :recycling_sofaschairs #A110
      outcome :recycling_spirits_commercial #A111
      outcome :recycling_soilimprover #A112
      outcome :recycling_sellotape #A113
      outcome :recycling_stamps #A114
      outcome :recycling_stones #A115
      outcome :recycling_tetrapacks #A116
      outcome :recycling_television #A117
      outcome :recycling_telephonedirectory #A118
      outcome :recycling_textiles #A119
      outcome :recycling_greenwaste_householder #A120
      outcome :recycling_tyres_householder #A121
      outcome :recycling_tyres_commercial #A122
      # outcome :recycling_other #A123
      outcome :recycling_wallpaper #A124
      outcome :recycling_wood #A125
      # outcome :recycling_other #A126


    end
  end
end

