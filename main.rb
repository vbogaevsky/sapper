require "./lib/Game.rb"
Shoes.app(title: "Sapper", width: 300, height: 300) do 
  mines_am = 10 #in future let user choose mines ammount
  game = Game.new(mines_am)
  field = Array.new(10) do |item|
    item = Array.new(10) do |cell_button|
      flow width: 30, height: 30 do
        button "?"
      end 
    end
  end 
end