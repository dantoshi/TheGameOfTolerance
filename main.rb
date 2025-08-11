def open_program
	main_menu
end





def main_menu
	def menu_i
		 "\n// WELCOME TO THE GAME OF TOLERANCE"
		 menu_ii
	end
	def menu_ii
		puts "\n// How shall we proceed... (1)Start Game, (2)Read Rules, or (3)Quit Game?"
		menu_choice = gets.chomp
		case menu_choice
		when "1"
			puts "\n// Starting Game..."
			game_setup
		when "2"
			puts "\n// Loading Rules..."
			tell_rules
		when "3"
			puts "\n// Quitting Game..."
			exit
		else
			puts "\n!! Invalid Input... Please enter a choice of 1, 2, or 3."
			menu_ii
		end
	end
	menu_i
end





def game_setup
	def setup_i
		puts "\n// How many human players will be participating? Please enter a choice of 1 through 25."
		player_count = gets.chomp.to_i
		if player_count > 25 || player_count < 1
			puts "\n!! Invalid Input... Please enter a choice of 1 through 25."
			setup_i
		else
			puts "\n// #{player_count} player(s). Roger that."
			setup_ii
		end
	end
	def setup_ii
		puts "\n// How many NPCs will be participating? Please enter a choice of 1 through 25."
		npc_count = gets.chomp.to_i
		if npc_count > 25 || npc_count < 1 || (npc_count + player_count > 25)
			puts "\n!! Invalid Input... Please enter a choice of 1 through 25. Also, you cannot have more than 25 total 		participants including human players and NPCs."
			setup_i
		else
			puts "\n// #{npc_count} NPC(s). Roger that."
			setup_iii
		end
	end
	def setup_iii
		puts "\n// What game mode would you like to play?"
		puts "\n// (1)Standard Game, (2)Enable \"Super Ace\" Mode, (3)Enable \"Card Again\" Mode, or (4)More Info?"
		gameplay_choice = gets.chomp
		case gameplay_choice
		when "1"
			puts "\n// Standard Game. Solid Copy."
			#@game_mode = standard
			#start_game
		when "2"
			puts "\n// \"Super Ace\" Mode Enabled!"
			#@game_mode = superace_mode
			#start_game
		when "3"
			puts "\n// \"Card Again\" Mode Enabled!"
			#@game_mode = cardagain_mode
			#start_game
		when "4"
			puts "\n // More Information Loading..."
			gameplay_mechs_info
		else
			puts "\n!! Invalid Input... Please enter a choice of 1, 2, 3, or 4."
			setup_iii
		end
	end
	puts "\n// GAME SETUP"
	setup_i
end





def gameplay_mechs_info
	gameplay_mechs_mods = "
\n// GAMEPLAY MECHANICS MODIFICATIONS

// \“Super Ace\” Mode

Every Ace card starts out worth one point, just as normal. However, if a player has been dealt an Ace card and they decide to roll with a Tolerance number of ten, and then they proceed to roll a ten… not only would they gain the ten points as normal, but the Ace card would upgrade to a fourteen point card. If the player instead rolled less than ten, they would lose ten points as normal and the Ace card would retain it’s normal value of one point.


// \“Card Again\” Mode

Play as normal, except each player should be dealt an additional card after each round of rolls."
	def ready_or_not
		puts "\n// Ready to go back to Game Setup?"
		puts "\n// (1)Yes or Stay Here?"
		ready_or_not_choice = gets.chomp.to_i
		if ready_or_not_choice != 1
			puts "\n!! Invalid Input... Please enter a choice of 1 or nothing."
			ready_or_not
		else
			
			puts "\n// Wilco! Back to Game Setup..."
			setup_ii
		end
	end
	puts gameplay_mechs_mods
	ready_or_not
end





def tell_rules
	rules = "
\n// Introduction and Equipment:

Tolerance is a skill and luck based multiplayer card and dice betting game. The equipment needed to play are, at a minimum, one deck of playing cards and one die. Paper and pen can be useful for tracking points, but are not required for play. A “standard” game of Tolerance is played with a ten sided die and one fifty-two card deck of playing cards per each group of players numbering less than or equal to five. (ex. 2 players = 1 deck, 5 players = 1 deck, 6 players = 2 decks, and so on...)

// Rules and Game Loop:
	
The eldest player is the first round Dealer. The Dealer position, from then on, rotates clockwise after each round. The player that is next in rotation to be Dealer, shall be the called the Starter. If using multiple decks of cards, they should be combined.\n

A blind bet amount shall be per-determined by those playing. When betting, players may Check, Call, Raise, or Fold just as in the classic game of Texas Hold’em Poker.

Each round is won by the player that ends the round with the most points. If there is a point during a round where every player except one folds, the last player standing is declared the Winner.

Cards numbered two through ten are worth an equal number of points to their number. Face cards are worth the following number of points; a Jack is worth eleven points, a Queen is worth twelve points, a King is worth thirteen points, and lastly, an Ace is worth one point. Joker cards shall not be used.

1. The cards are shuffled by the Dealer.
2. Two cards are dealt face down to each player in a clockwise order. Do not view the cards.
3. A blind bet of the per-determined amount shall be made by the Starter.
4. Each player may now view their cards privately.
5. Beginning with the Starter, complete the first round of betting.
6. Beginning with the Starter, complete the first round of rolls. 
           
During a round of rolls, each player must first decide if they wish to roll or not. Choosing not to role the die, also known as “choosing to pass”, will not effect the player’s point count. If the player chooses to roll the die, they have the potential to gain or lose points.

The first step to rolling is the player deciding their Tolerance number, which is a possible number to be rolled with the die. In a game that is using a ten sided die, the player may choose a number one through ten as their Tolerance number. The Tolerance number is equal to the number of points the rolling player will receive if they roll a number greater than or equal to said Tolerance number. If the player roles below said Tolerance number, they will lose the number of points equal to said Tolerance number. 

For example, a player may choose to roll and choose five as their Tolerance number. If the player rolls a six. The player would then add five points to their hand’s total. If the player instead rolled a three, they would subtract five points from their hand’s total. Lastly, if the player chose ten as their Tolerance and then rolled a ten, they would add ten points to their hand’s total. 
           
7. Beginning with the Starter, complete the second round of betting.
8. Beginning with the Starter, complete the second round of rolls.
9. Beginning with the Starter, complete the third and final round of betting.
10. Every player that has not yet folded must now show their hand publicly.
11. The Dealer should tally up each player’s points and declare the round’s Winner.
12. The Winner receives the total amount of money previously bet by the players of the round.
           
Repeat the game loop until the game is over. The game can be played similarly to Texas Hold ‘Em Poker styles of play. For example, a Tournament style is where player’s enter the game with equal sums of money and play until only one player has money, automatically declaring them the Winner. Tolerance could also be played as a No-Limit Cash Game where players can join or leave the game between rounds as they please with any amount of money they wish to play with. There are many other styles of play that work with Tolerance."
	puts rules
end





=begin
def npc
end





def start_game
end
=end





def card_manager
	card_value = ["ace", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "jack", "queen", "king"]
	card_suit = ["spades", "hearts", "clubs", "diamonds"]
	@fresh_deck = card_value.product(card_suit).map do |value, suit|
		"#{value} of #{suit}"
	end
end





def dealer
	game_deck = @fresh_deck
	shuffled_game_deck = game_deck.shuffle
	drawn_card = shuffled_game_deck.pop
	puts drawn_card #for temp test

end





def participant_manager
	def seat_participants
		npcs_needed = player_count
	end	
end




card_manager
dealer
open_program
