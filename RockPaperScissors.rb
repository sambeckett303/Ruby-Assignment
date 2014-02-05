# Part 4: Rock, Paper, Scissors

class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

 
# Part a
def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    legalMoves = ["R", "P", "S"]
    if legalMoves.include?(game[0][1]) && legalMoves.include?(game[1][1])
		return find_winner(game)
	else
		raise NoSuchStrategyError 
	end
end

def find_winner(game)
	if (game[1][1] == 'P' && game[0][1] == 'R' ||
	game[1][1] == 'S' && game[0][1] == 'P' ||
	game[1][1] == 'R' && game[0][1] == 'S') 
		return game[1]
	else
		return game[0]
		end
end

def rps_tournament_winner(tournament)
	if tournament[0][0].is_a? String
		return rps_game_winner(tournament)
	end
	return rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
end

tournament = [
    [
        [ ["Armando", "P"], ["Dave", "S"] ],

        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],

        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]
puts rps_tournament_winner(tournament)

game = [ ["Armando", "P"], ["Dave", "P"] ]
puts rps_game_winner(game)
