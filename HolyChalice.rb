#!/usr/bin/env ruby 

class HolyChalice
  def initialize
    start_info = gets.to_i

    @field_status = Array.new()
    case start_info
    when 0
      @ally_lancer = [0,0]
      @ally_saber = [0,7]
      @ally_berserker = [7,0]

      @enemy_lancer = [14,14]
      @enemy_saber = [14,7]
      @enemy_berserker = [7,14]
    when 1
      @ally_lancer = [14,14]
      @ally_saber = [14,7]
      @ally_berserker = [7,17]

      @enemy_lancer = [0,0]
      @enemy_saber = [0,7]
      @enemy_berserker = [7,0]
    end
    puts 0
  end
end
