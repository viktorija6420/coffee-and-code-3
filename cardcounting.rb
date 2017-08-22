# count = 0
# We add +1 to the count when a 2, 3, 4, 5, or 6 have been played.
#We subtract -1 from the count when a T (ten), J, K, Q, or A has been played.
# Given a string that is no longer than 52 characters
# (i.e. the size of a standard deck of cards), write a method which
#  returns the count given the string.
#  card_count('K2T6AA')  ---> -2
#  card_count('798TT23') ---> 0
#  card_count('235T2')  ---> 3
CARDS_IN_A_DECK = 52
CARDS_OF_EACH_RANK = 4

#When you want to keep track of something, you need to use a hash.

def more_than_four_cards_of_each_rank_played(played_cards)
  played_cards_tracker = {}
  %w(2 3 4 5 6 7 8 9 T J Q K A).each {|card| played_cards_tracker[card] = 0 }
  played_cards.each {|card| played_cards_tracker[card] +=1}
  played_cards_tracker.select { |k,v| v > CARDS_OF_EACH_RANK}.size > 0
  #This is a common problem in real life. Example, Amazon checking which
  #costumer has only one orderend

 def card_count(input)

   return false if input.size > CARDS_IN_A_DECK
   #convert input string to array
   played_cards = input.chars #input.split('')
    count = 0
    played_cards.each do |card|
      #option 1
      # if card == 2 || card == 3 || card == 4 || card == 5 || card == 6
      #   count += 1
      # elsif card == 7 || card == 8 || card == 9
      #   nil
      # elsif card == "T" || card == "J" || card == "Q" || card == "K" || card == "A"
      #  count -=1

      #option 2
      #  case card
      #  when "2","3","4","5","6" then count +=1
      #  when "T", "J", "Q", "K", "A"
      #  end

       #option3
       count += case card
       when "2","3","4","5","6" then 1
       when "T", "J", "Q", "K", "A" then -1
       else 0
       end

    end

   # card_count('K2T6AA')
   # card_count('798TT23')
   # card_count('235T2')
  puts card_count(K2T6AAK2T6AAK2T6AAK2T6AA'K2T6AA'K2T6AA'K2T6AA')
