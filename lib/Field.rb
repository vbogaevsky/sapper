require 'Cell'

class Field
  def initialize
    @cell = Array.new(mines_am) do
        |item_ext| item_ext = Array.new(mines_am) do 
        |item| item = Cell.new
      end
    end
    @mines_am = mines_am
  end
  def plant_mines
    until done == @mines_am do
			a = rand(1..@mines_am)
			b = rand(1..@mines_am)
			done = 0
      if a_prev.each {|item| item != a} || b_prev.each {|item| item != b}
        cell[a][b].status = "primed"; done += 1
      end
      a_prev << a 
      b_prev << b
    end
  end
  def calc(item_ext, item)
    count = 1
    (-1).upto(1) do |iter_ext|
      (-1).upto(1) do |iter|
        if @cell[item_ext-iter_ext][item-iter].status == "primed" 
          count +=1
        end
      end    		 
    end
    count.to_s!
  end
  def fill_cells
    @cell.each do |item_ext|
      item_ext.each do |item|
        item.status= calc(item_ext, item) unless item.status == "primed"
   	  end
    end
  end
end