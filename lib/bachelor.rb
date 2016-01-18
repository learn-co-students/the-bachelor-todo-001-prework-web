def get_first_name_of_season_winner(data, season)
  winner = nil
  data[season].each do |x|
    x.each do |cat, info|
      if info == "Winner"
        winner = x["name"]
      end
    end
  end
  winner.split.first 
end

def get_contestant_name(data, occupation)
  name = nil
  data.each do |sea, info|
    info.each do |x|
      x.each do |cat, ident|
        if ident == occupation
          name = x["name"]
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |sea, info|
    info.each do |x|
      x.each do |cat, ident|
        if ident == hometown
          counter +=1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
 occupation = []
 data.each do |sea, info|
    info.each do |x|
      x.each do |cat, ident|
        if ident == hometown
          occupation << x["occupation"]
        end
      end
    end
  end
  occupation.first 
end

def get_average_age_for_season(data, season)
  array = []
  data[season].each do |x|
    x.each do |cat, info|
      if cat == "age"
        array << x["age"]
      end
    end
  end
  sum = 0
  array.map!{|x| x.to_f}
  array.each{|x| sum += x}
  sum = sum / array.length
  sum.round
end





