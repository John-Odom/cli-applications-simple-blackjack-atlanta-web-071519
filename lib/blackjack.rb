def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(game)
  puts "Sorry, you hit #{game}. Thanks for playing!"
end

def initial_round
  a=deal_card
  b=deal_card
  deal_card
  deal_card
  display_card_total(a+b)
  return a+b
end

def hit? (card_total)
  prompt_user
  a = get_user_input
  if a == "s"
  return card_total
  else
    b=deal_card
    return card_total+b
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  if initial_round <21
    hit?
    display_card_total
  else
    end_game
  end
end
    
