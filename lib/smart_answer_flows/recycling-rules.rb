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
            question :recycling_householder_liquidsolid? #Q2
          when 'commercial'
            question :recycling_commercial? #Q3
          end
        end
      end




      # ## Householder - Liquid or Solid
      # ##
      # ## Q2
      
      multiple_choice :recycling_householder_liquidsolid? do
        option "liquid"
        option "solid"

      next_node do |response|
          case response
          when 'liquid'
            question :recycling_householder_liquids? #Q3
          when 'solid'
            question :recycling_householder_iselectrical? #Q4
          end
        end
      end





      # ## Householder - What Liquid?
      # ##
      # ## Q3
      
      multiple_choice :recycling_householder_liquids? do
        option "chemicals"
        option "fat"
        option "paint_householder"

      next_node do |response|
          case response
          when 'chemicals'
            outcome :recycling_chemicals #A31
          when 'fat'
            outcome :recycling_fat #A37
          when 'paint_householder'
            outcome :recycling_paint_householder #A88
          end
        end
      end





      # ## Householder - Is it Electrical?
      # ##
      # ## Q4
      
      multiple_choice :recycling_householder_iselectrical? do
        option "yes"
        option "no"

      next_node do |response|
          case response
          when 'yes'
            question :recycling_householder_electrical? #Q5
          when 'no'
            question :recycling_householder_solidmaterial? #Q6
          end
        end
      end





      # ## Householder - What electrical item?
      # ##
      # ## Q5
      
      multiple_choice :recycling_householder_electrical? do
        option "carbatteries_householder"
        option "batteries_householder"
        option "mobilephonebattery"
        option "christmastreelights"
        option "computerparts"
        option "hearingaids"
        option "fatfryer"
        option "mobilephones"
        option "monitors"
        option "laptoptablets"
        option "television"
        option "largeelectricalitems_householder"
        option "smallelectricalitems_householder"

      next_node do |response|
        case response
          when 'batteries_householder'
            outcome :recycling_batteries_householder #A8
          when 'carbatteries_householder'
            outcome :recycling_carbatteries_householder #A21 
          when 'christmastreelights'
            outcome :recycling_christmastreelights #A33
          when 'computerparts'
            outcome :recycling_computerparts #A56
          when 'hearingaids'
            outcome :recycling_hearingaids #A57
          when 'laptoptablets'
            outcome :recycling_laptoptablets #A67
          when 'smallelectricalitems_householder'
            outcome :recycling_smallelectricalitems_householder #A45
          when 'fatfryer'
            outcome :recycling_fatfryer #A46
          when 'largeelectricalitems_householder'
            outcome :recycling_largeelectricalitems_householder #A49  
          when 'mobilephones'
            outcome :recycling_mobilephones #A76
          when 'mobilephonebattery'
            outcome :recycling_mobilephonebattery #A72
          when 'monitors'
            outcome :recycling_monitors #A77
          when 'television'
            outcome :recycling_television #A117
          
          end
        end
      end





      # ## Householder - What Material?
      # ##
      # ## Q6
      
      multiple_choice :recycling_householder_solidmaterial? do

          option "plastic"
          option "paper"
          option "metal"
          option "organic"
          option "fabric"
          option "glass"
          option "other"

      next_node do |response|
          case response
          when 'plastic'
            question :recycling_householder_plastic? #Q7
          when 'paper'
            question :recycling_householder_paper? #Q8
         when 'metal'
            question :recycling_householder_metal? #Q9
         when 'organic'
            question :recycling_householder_organic? #Q10
         when 'fabric'
            question :recycling_householder_fabric? #Q11
         when 'glass'
            question :recycling_householder_glass? #Q12
         when 'other'
            question :recycling_householder_other? #Q13
          end
        end
      end




      # ## Householder - Plastics?
      # ##
      # ## Q7
      
      multiple_choice :recycling_householder_plastic? do
         option "britawaterfilters"
         option "bubblewrap"
         option "carrierbags"
         option "cartons"
         option "clingfilm"
         option "cdsdvdsgames"
         option "clotheshangers"
         option "crisppackets"
         option "coffeepods"
         option "foodpackaging"
         option "inhalers"
         option "plasticfilmtubstrays"
         option "plasticbags"
         option "printercartridges_householder"
         option "plasticbottles_householder"
         option "plasticbottletops"
         option "pyrex"
         option "sellotape"
         option "tetrapacks"
       

      next_node do |response|
        case response
          when 'britawaterfilters'
            outcome :recycling_britawaterfilters #A14
          when 'bubblewrap'
            outcome :recycling_bubblewrap #A18
          when 'carrierbags'
            outcome :recycling_carrierbags #A23
          when 'cartons'
            outcome :recycling_cartons #A73
          when 'cdsdvdsgames'
            outcome :recycling_cdsdvdsgames #A27
          when 'clingfilm'
            outcome :recycling_clingfilm #A29
          when 'clotheshangers'
            outcome :recycling_clotheshangers #A30   
          when 'coffeepods'
            outcome :recycling_coffeepods #A35
          when 'crisppackets'
            outcome :recycling_crisppackets #A36
          when 'foodpackaging'
            outcome :recycling_foodpackaging #A51
          when 'inhalers'
            outcome :recycling_inhalers #A59
          when 'plasticfilmtubstrays'
            outcome :recycling_plasticfilmtubstrays #A98
          when 'plasticbags'
            outcome :recycling_plasticbags #A99
          when 'printercartridges_householder'
            outcome :recycling_printercartridges_householder #A101
          when 'plasticbottles_householder'
            outcome :recycling_plasticbottles_householder #A103
          when 'plasticbottletops'
            outcome :recycling_plasticbottletops #A105
          when 'pyrex'
            outcome :recycling_pyrex #A107
          when 'sellotape'
            outcome :recycling_sellotape #A113
          when 'tetrapacks'
            outcome :recycling_tetrapacks #A116
          end
        end
      end




      # ## Householder - Paper?
      # ##
      # ## Q8
      
      multiple_choice :recycling_householder_paper? do
           option "books"
           option "catalogues"
           option "junkmail"
           option "paper_householder"
           option "papercoffeecups"
           option "papertowels"
           option "photographs"    
           option "stamps"
           option "telephonedirectory"
       
      next_node do |response|
        case response
          when 'books'
            outcome :recycling_books #A13
          when 'catalogues'
            outcome :recycling_catalogues #A26
          when 'junkmail'
            outcome :recycling_junkmail #A61
          when 'paper_householder'
            outcome :recycling_paper_householder #A90
          when 'papercoffeecups'
            outcome :recycling_papercoffeecups #A92
          when 'papertowels'
            outcome :recycling_papertowels #A93
          when 'photographs'
            outcome :recycling_photographs #A97
          when 'stamps'
            outcome :recycling_stamps #A114
          when 'telephonedirectory'
            outcome :recycling_telephonedirectory #A118
          end
        end
      end




      # ## Householder - Metal?
      # ##
      # ## Q9
      
      multiple_choice :recycling_householder_metal? do
            option "aerosols"
            option "aluminiumtrays"
            option "beds"
            option "bicycles"
            option "cars"
            option "coins"
            option "gasbottles"
            option "ironingboard"
            option "jewellery"
            option "keys_householder"
            option "kosangas"
            option "metalpackaging"
            option "musicalinstruments"
            option "scrapmetal"
            option "tools"
          
      next_node do |response|
        case response
          when 'aerosols'
            outcome :recycling_aerosols #A5
          when 'aluminiumtrays'
            outcome :recycling_aluminiumtrays #A6
          when 'beds'
            outcome :recycling_beds #A10
          when 'bicycles'
            outcome :recycling_bicycles #A15
          when 'cars'
            outcome :recycling_cars #A19
          when 'coins'
            outcome :recycling_coins #A39
          when 'gasbottles'
            outcome :recycling_gasbottles #A52
          when 'ironingboard'
            outcome :recycling_ironingboard #A60
          when 'jewellery'
            outcome :recycling_jewellery #A62
          when 'keys_householder'
            outcome :recycling_keys_householder #A63
          when 'kosangas'
            outcome :recycling_kosangas #A66
          when 'metalpackaging'
            outcome :recycling_metalpackaging #A75
          when 'scrapmetal'
            outcome :recycling_scrapmetal #A109
          when 'musicalinstruments'
            outcome :recycling_musicalinstruments #A79
          when 'tools'
            outcome :recycling_tools #A53
          end
        end
      end




      # ## Householder - Organic?
      # ##
      # ## Q10
      
      multiple_choice :recycling_householder_organic? do
            option "ash"
            option "animalbedding"
            option "christmastree"
            option "cork"
            option "cratespalletboards"
            option "foodwaste"
            option "greenwaste_householder"
            option "householdwaste"
            option "manure"
            option "petbedding"
            option "petfood"
            option "petwaste"
            option "soilimprover"
            option "stones"

      next_node do |response|
        case response
          when 'ash'
            outcome :recycling_ash #A4
          when 'animalbedding'
            outcome :recycling_animalbedding #A7
          when 'christmastree'
            outcome :recycling_christmastree #A32
          when 'cork'
            outcome :recycling_cork #A40
          when 'cratespalletboards'
            outcome :recycling_cratespalletboards #A34
          when 'foodwaste'
            outcome :recycling_foodwaste #A48
          when 'householdwaste'
            outcome :recycling_householdwaste #A58
          when 'manure'
            outcome :recycling_manure #A70
          when 'soilimprover'
            outcome :recycling_soilimprover #A112
          when 'stones'
            outcome :recycling_stones #A115
          end
        end
      end



      # ## Householder - Fabric?
      # ##
      # ## Q11
      
      multiple_choice :recycling_householder_fabric? do
            option "carpetsrugs"
            option "curtainscushions"
            option "furniture"
            option "mattresses"
            option "sofaschairs"
            option "textiles"

          
      next_node do |response|
        case response
           when 'carpetsrugs'
            outcome :recycling_carpetsrugs #A20 
           when 'curtainscushions'
            outcome :recycling_curtainscushions #A43
           when 'furniture'
            outcome :recycling_furniture #A50
           when 'mattresses'
            outcome :recycling_mattresses #A71
           when 'sofaschairs'
            outcome :recycling_sofaschairs #A110
           when 'textiles'
            outcome :recycling_textiles #A119
           end
        end
      end




      # ## Householder - Glass?
      # ##
      # ## Q12
      
      multiple_choice :recycling_householder_glass? do
            option "glass"
            option "glasses"
            option "lightbulbs_householder"
       
      next_node do |response|
        case response
          when 'glass'
            outcome :recycling_glass #A54
          when 'glasses'
            outcome :recycling_glasses #A55
          when 'lightbulbs_householder'
            outcome :recycling_lightbulbs_householder #A68        
          end
        end
      end





      # ## Householder - Other Materials?
      # ##
      # ## Q13
      
      multiple_choice :recycling_householder_other? do
          option "asbestos_householder"
          option "bricks"
          option "cardboard_householder"
          option "ceramicscultery_householder"
          option "clinicalwaste"
          option "diywaste"
          option "kitchenunits"
          option "medicine"
          option "nappies"
          option "plasterboard"
          option "tyres_householder"
       
      next_node do |response|
        case response
           when 'asbestos_householder'
            outcome :recycling_asbestos_householder #A2
           when 'bricks'
            outcome :recycling_bricks #A16
           when 'cardboard_householder'
            outcome :recycling_cardboard_householder #A24
           when 'ceramicscultery_householder'
            outcome :recycling_ceramicscultery_householder #A28
           when 'clinicalwaste'
            outcome :recycling_clinicalwaste #A41
           when 'diywaste'
            outcome :recycling_diywaste #A44
           when 'kitchenunits'
            outcome :recycling_kitchenunits #A65      
           when 'medicine'
            outcome :recycling_medicine #A78
           when 'nappies'
            outcome :recycling_nappies #A82      
           when 'plasterboard'
            outcome :recycling_plasterboard #A100
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

