require './lib/Field'

class Game
	def initialize(mines_am)
		@field = Field.new(mines_am)
		@game_started = true
	end
	def game_over?
		if mine.exploded?
			@game_over = "lost"
		else @game_over = "won"
		end
	end
end