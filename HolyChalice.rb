#!/usr/bin/env ruby 
require_relative "lib/constmod.rb"

class HolyChalice

  include Constmods
  def initialize
    start_info = gets.to_i
    
    @turn_status = nil
    @field_status = Array.new(15,Array.new)
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

      @enemy_lancer = FRAST_LANCER
      @enemy_saber = FRAST_SABER
      @enemy_berserker = FRAST_BERSERKER
    end
    puts 0
  end

  def turn_info
   22.times do |i|
     data = get_data().chomp.to_i
     if i == INFO_NUM
       @turn_status = data
     elsif i <= ENBE_NUM
       for  j in 0 ... 22 do 
         case i
         when ALLA_NUM + 1
           @ally_lancer[j] = data[j]
         when ALSA_NUM + 1
           @ally_saber[j] = data[j]
         when ALBE_NUM + 1
           @ally_berserker[j] = data[j]
         when ENLA_NUM + 1
           @enemy_lancer[j] = data[j]
         when ENSA_NUM + 1
           @enemy_saber[j] = data[j]
         when ENBE_NUM + 1
           @enemy_berserker[j] = data[j]
         end
       end
     else
       for x in 0 ... 15
         for y in 1 .. 15
             @field_status[x][y - 1] = data[y]  
         end
       end  
     end
   end  
  end

  def get_data
    return gets.to_s
  end

  def get_myberserker 
    return @ally_berserker
  end

  def get_mylancer
    return @ally_lancer
  end

  def get_mysaber
    return @ally_saber
  end

  def get_eneberserker
    return @enemy_berserker
  end

  def get_enelancer
    return @enemy_lancer
  end

  def get_enesaber
    return @enemy_saber
  end

  def get_field
    return @field_status
  end

  def get_turn
    return @turn_status
  end
end
