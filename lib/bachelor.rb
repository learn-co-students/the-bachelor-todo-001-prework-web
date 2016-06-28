def get_first_name_of_season_winner(data, season)
  winner=[]
  data[season].each do|contestant|
   if contestant["status"]=="Winner"
    winner<<contestant["name"]
   end
  return winner.join().split()[0]
 end
end


def get_contestant_name(data, occupation)
  occupied=[]
  data.each do|season,contestants|
    contestants.each do |contestant|
      if contestant["occupation"]==occupation
        occupied<<contestant["name"]
      end
    end
  end
  return occupied[0]
end

def count_contestants_by_hometown(data, hometown)
  home=0
  data.each do|season,contestants|
    contestants.each do |contestant|
     if contestant["hometown"]==hometown
      home+=1
     end
    end
  end
  return home
end

def get_occupation(data, hometown)
  home=[]
  data.each do|season,contestants|
    contestants.each do |contestant|
     if contestant["hometown"]==hometown
      home<<contestant["occupation"]
     end
   end
 end
 return home[0]
end

def get_average_age_for_season(data, season)
  list_ages=[]
  total=0
  data[season].each do|contestants|
    list_ages<<contestants["age"].to_i
    total+=contestants["age"].to_i
     end
   mean=total/list_ages.size.to_f
   return mean.round
end