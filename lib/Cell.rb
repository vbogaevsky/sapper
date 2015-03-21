class Cell
  attr_accessor :status
  def holds_mine?
    return false unless @status == "primed"
  end
  def plant_flag
    @status = "flag"
  end
  def flaged?
    return true if @status == "flag"
  end 
end