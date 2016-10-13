module SmartAnswer
  class RecyclingRulesFlow < Flow
    def define
      name 'recycling-rules'

      ## What are you recycling
      ##
      ## Q1
      multiple_choice :recycling_items? do
        option "recycling_battery"
        option "recycling_other"


        next_node do |response|
          case response
          when 'recycling_battery'
            question :recycling_battery_type? #Q2
          when 'recycling_other'
            outcome :recycling_other #A1
          end
        end
      end

      ## Type of Battery
      ##
      ## Q2
      multiple_choice :recycling_battery_type? do
        option "battery_type_household"
        option "battery_type_vehicle"


        next_node do |response|
          case response
          when 'battery_type_household'
            outcome :recycling_battery_household #A2
          when 'battery_type_vehicle'
            outcome :recycling_battery_vehicle #A3
          end
        end
      end

      ## Outcomes

      outcome :recycling_other #A1
      outcome :recycling_battery_household #A2
      outcome :recycling_battery_vehicle #A3

    end
  end
end

