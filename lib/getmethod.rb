module Getmethod
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