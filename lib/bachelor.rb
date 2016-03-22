require 'pry'


def get_first_name_of_season_winner(data, season)
 winner=""
  data[season].each do |contestent|
    if contestent["status"]=="Winner"
           winner<<contestent["name"]
     end
  end
  winner.split(' ')[0]
end



def get_contestant_name(data, occupation)
name=""
  data.each do |season,details|
    details.each do |contestent|
    if contestent["occupation"]==occupation
           name<<contestent["name"]
        end
     end
  end
  name
end

#Build a method, count_contestants_by_hometown, that takes in two arguments––the data hash and a string of a hometown. This method should return a counter of the number of contestants who are from that hometown.

def count_contestants_by_hometown(data, hometown)
count=0
  data.each do |season,details|
    details.each do |contestent|
    if contestent["hometown"]==hometown
           count+=1
        end
     end
  end
  count
end

def get_occupation(data, hometown)
 data.each do |season,details|
    details.each do |contestent|
    if contestent["hometown"]==hometown
           return contestent["occupation"]
         end
     end
  end
end

def get_average_age_for_season(data, season)
ages=[]
  data[season].each do |contestent|
       ages << contestent["age"].to_f
  end
  ageAvrage=(ages.inject(:+) / ages.size).round

end
