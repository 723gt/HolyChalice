#!/usr/bin/env ruby 

class HolyChalice
  FRAST_LANCER = [0,0]
  FRAST_SABER = [0,7]
  FRAST_BERSERKER = [7,0]
  SECOND_LANCER = [14,14]
  SECOND_SABER = [14,7]
  SECOND_BERSERKER = [7,14]

  def initialize
    start_info = gets.to_i

    @field_status = Array.new()
    case start_info
    when 0
      @ally_lancer = FRAST_LANCER
      @ally_saber = FRAST_SABER
      @ally_berserker = FRAST_BERSERKER

      @enemy_lancer = SECOND_LANCER
      @enemy_saber = SECOND_SABER
      @enemy_berserker = SECOND_BERSERKER
    when 1
      @ally_lancer = SECOND_LANCER
      @ally_saber = SECOND_SABER
      @ally_berserker = SECOND_BERSERKER

      @enemy_lancer = SECOND_LANCER
      @enemy_saber = SECOND_SABER
      @enemy_berserker = SECOND_BERSERKER
    end
    puts 0
  end
end
