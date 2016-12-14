#!/usr/bin/env ruby 

class HolyChalice
  FRAST_LANCER = [0,0]
  FRAST_SABER = [0,7]
  FRAST_BERSERKER = [7,0]
  SECOND_LANCER = [14,14]
  SECOND_SABER = [14,7]
  SECOND_BERSERKER = [7,14]
  INFO_NUM = 22
  TURN_NUM = 0
  ALLA_NUM = 0
  ALSA_NUM = 1
  ALBE_NUM = 2
  ENLA_NUM = 3
  ENSA_NUM = 4
  ENBE_NUM = 5

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
     data = get_data().to_i
     if i == INFO_NUM
       @turn_status = data
     elsif i > INFO_NUM && i <= ENBE_NUM
       for data.length - 1 do |j|
         case i
         when ALLA_NUM
           @ally_lancer[j] = data[j]
         when ALSA_NUM
           @ally_saber[j] = data[j]
         when ALBE_NUM
           @ally_berserker[j] = data[j]
         when ENLA_NUM
           @enemy_lancer[j] = data[j]
         when ENSA_NUM
           @enemy_saber[j] = data[j]
         when ENBE_NUM 
           @enemy_berserker[j] = data[j]
         end
       end
     else
       16.times do |j|
         if j != 0
           @field_status[i][j - 1] = data[j]  
         end
       end  
     end
   end  
  end
end
