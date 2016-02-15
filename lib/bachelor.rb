require 'pry'
def get_first_name_of_season_winner(data, season_test)
  winner = ""
   data.each do |season, contestants|
      season_comp = season.to_s
       #season_test2 = season_test.split(" ").last
     if season_comp == season_test
       #binding.pry
         contestants.each do |contestant, stats|
           #binding.pry
            contestant.each do |stati, value|
               if value == "Winner"
                  winner = contestant["name"]
                 #binding.pry
               end
            end
         end
      end
   end
   winner.split(" ").first
end

def get_contestant_name(data, occupation)
  cont_occ = ""

   data.each do |season, contestants|
      contestants.each do |contestant, stats|
         contestant.each do |stati, value|
            if value == occupation
               cont_occ = contestant["name"]
            end
         end
      end
   end
   cont_occ
end

def count_contestants_by_hometown(data, hometown)
  cont_town = []

   data.each do |season, contestants|
      contestants.each do |contestant, stats|
         contestant.each do |stati, value|
            if value == hometown
              cont_town << contestant["name"]
            end
         end
      end
   end
  cont_town.length
end

def get_occupation(data, hometown)
  cont_town = []

   data.each do |season, contestants|
      contestants.each do |contestant, stats|
         contestant.each do |stati, value|
            if value == hometown
               cont_town << contestant["occupation"]
            end
         end
      end
   end
   cont_town.first
end

def get_average_age_for_season(data, season_comp)
  age_array = []

   data.each do |season, contestants|
      if season.to_s == season_comp
         contestants.each do |contestant, stats|
            contestant.each do |stati, value|
               if stati == "age"
                  age_array << contestant["age"].to_i
               end
            end
         end
      end
   end
   age_av = age_array.inject{ |sum, el| sum + el }.to_f / age_array.size
   age_av.round(0)
end
