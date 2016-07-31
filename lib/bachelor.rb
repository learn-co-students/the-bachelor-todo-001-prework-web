require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  is_the_winner = {}
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |i|
        i.each do |k,v|
          if v == "Winner"
            i.each do |k,v|
              if k == "name"
                is_the_winner[k] = v
              end
            end
          end
        end
      end
    end
  end
  first_name = is_the_winner.values.join.split(" ")
  first_name[0]
end

def get_contestant_name(data, occupation)
  # code here
  who_am_i = ""
  data.each do |seasons, contestants|
    contestants.each do |i|
      i.each do |k,v|
        if v == occupation
          i.each do |k,v|
            if k == "name"
              who_am_i = v
            end
          end
        end
      end
    end
  end
  who_am_i
end

def count_contestants_by_hometown(data, hometown)
  # code here
  
  how_many = 0
  data.each do |seasons, contestants|
    contestants.each do |i|
      i.each do |k,v|
        if v == hometown 
          how_many += 1
        end
      end
    end
  end
  how_many
end

def get_occupation(data, hometown)
  # code here
  what_work = ""
  same_town = []
  data.each do |seasons, contestants|
    contestants.each do |i|
      i.each do |k,v|
        if v == hometown
          i.each do |k,v|
            if k == "occupation"
              same_town << v
              what_work = same_town[0]
            end
          end
        end
      end
    end
  end
  what_work
end

def get_average_age_for_season(data, season)
  # code her
  ages = []
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |i|
        i.each do |k,v|
         if k == "age"
          ages << v.to_i
         end
        end
      end
    end
  end
  sum = ages.inject(0) {|sum,x| sum+x}
  average = (sum.to_f / ages.length.to_f).round
end


