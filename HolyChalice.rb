
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
   fieldcnt = 0
   22.times do |i|
     data = get_data().chomp.gsub(" ","")
     if i == TURN_NUM
       @turn_status = data
     elsif i <= ENBE_NUM + 1
       $minusmv = 0
       datasize = data.length
       for j in 0 ... datasize do 
         case i
         when ALLA_NUM + 1
           @ally_lancer[j] = data[j].to_i
         when ALSA_NUM + 1
           @ally_saber[j] = data[j].to_i
         when ALBE_NUM + 1
           @ally_berserker[j] = data[j].to_i
         when ENLA_NUM + 1
           @enemy_lancer[j] = check_minus(data,j)
         when ENSA_NUM + 1
           @enemy_saber[j] = check_minus(data,j)
         when ENBE_NUM + 1
           @enemy_berserker[j] = check_minus(data,j)
         end
         if j + $minusmv > 5
           break
         end
       end
     else
       tmparray = Array.new
       for x in 0 ... 15
         tmparray[x] = data[x].to_i
       end  
       @field_status[fieldcnt] = tmparray
       fieldcnt += 1  
     end
   end  
  end

  private 

  def check_minus(data,j)
    num = 0
    if data[j + $minusmv ] == "-"
      $minusmv += 1
      num = data[j + $minusmv].to_i * -1
    else
      num = data[j + $minusmv].to_i
    end
    return num
  end
end
