
require_relative "lib/constmod"
require_relative "lib/getmethod"

class HolyChalice
  include Constmod
  include Getmethod
  
  $minusmv = nil
  
  def initialize
    start_info = gets.to_i
    
    @turn_status = nil
    @field_status = Array.new
    case start_info
    when FRAST_PLAY
      @ally_lancer = FRAST_LANCER
      @ally_saber = FRAST_SABER
      @ally_berserker = FRAST_BERSERKER

      @enemy_lancer = SECOND_LANCER
      @enemy_saber = SECOND_SABER
      @enemy_berserker = SECOND_BERSERKER
    when SECOND_PLAY
      @ally_lancer = SECOND_LANCER
      @ally_saber = SECOND_SABER
      @ally_berserker = SECOND_BERSERKER

      @enemy_lancer = FRAST_LANCER
      @enemy_saber = FRAST_SABER
      @enemy_berserker = FRAST_BERSERKER
    end
    puts START_RES
  end

  def turn_info
   fieldcnt = ZERO_INIT
   INFO_NUM.times do |i|
     data = get_data().chomp.gsub(" ","")
     if i == TURN_NUM
       @turn_status = data
     elsif i <= ENBE_NUM + COUNT_ADD
       $minusmv = ZERO_INIT
       datasize = data.length
       for j in INFO_START ... datasize do 
         case i
         when ALLA_NUM + PLAYER_SHIFT
           @ally_lancer[j] = data[j].to_i
         when ALSA_NUM + PLAYER_SHIFT
           @ally_saber[j] = data[j].to_i
         when ALBE_NUM + PLAYER_SHIFT
           @ally_berserker[j] = data[j].to_i
         when ENLA_NUM + PLAYER_SHIFT
           @enemy_lancer[j] = check_minus(data,j)
         when ENSA_NUM + PLAYER_SHIFT
           @enemy_saber[j] = check_minus(data,j)
         when ENBE_NUM + PLAYER_SHIFT
           @enemy_berserker[j] = check_minus(data,j)
         end
         if j + $minusmv > PLAYER_STAT
           break
         end
       end
     else
       tmparray = Array.new
       for x in FIELD_MIN ... FIELD_MAX
         tmparray[x] = data[x].to_i
       end  
       @field_status[fieldcnt] = tmparray
       fieldcnt += COUNT_ADD  
     end
   end  
  end

  private 

  def check_minus(data,j)
    num = ZERO_INIT
    if data[j + $minusmv ] == "-"
      $minusmv += COUNT_ADD
      num = data[j + $minusmv].to_i * REVERCE_MINUS
    else
      num = data[j + $minusmv].to_i
    end
    return num
  end
end
