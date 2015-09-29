require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |whichseason, person|
    #Now, we are iterating through the seasons
 # "season 30": [
  #  {
  #   "name":      "Beth Smalls",
  #    "age":       "26",
   #   "hometown":  "Great Falls, Virginia",
    #  "occupation":"Nanny/Freelance Journalist",
     # "status":    "Winner"
  #  },
   # {
    #  "name":       "Becca Tilley",
     # "age":        "27",
    #  "hometown":   "Shreveport, Louisiana",
     # "occupation": "Chiropractic Assistant",
     # "status":     "Eliminated Week 8"
  #  }
    if whichseason == season
      #if the season is the season we are looking for, we will now iterate through the people
      person.each do |x|
        #split will change the firstname lastname into an array. Then .first will return the first element of the array which is the first name.
        return x["name"].split.first
      end
    end   
    end
end

def get_contestant_name(data, occupation)
  # When we get the occupation, we have to return the woman who has that occupation.
  # First iteration, we will be iterating through seasons again.
  data.each do |seasons, person|
    # Now we have to iterate through the people
    person.each do |value|
      if value["occupation"] == occupation
        return value["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # We want a particular number of contestants from whatever hometown.
  # First I guess we have to iterate through seaons than narrow down to hometown... and have a counter
  counter = 0
  data.each do |seasons, person|
    person.each do |value|
      #Now we are once again going through the people and their details.
      if value["hometown"] == hometown
        counter += 1
        #What is the difference between counter += 1 and counter + 1?
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  #This is supposed to be occupation by hometown
  data.each do |seasons, person|
    person.each do |value|
      if value["hometown"] == hometown
        return value["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # Now I have to find the average age per season. 
  # How do I find the average age amongst a bunch of people?
  # Total age divided by the total amount of people... 
  namecount = 0 #hopefully this finds the number of people
  agecount = 0 #hopefully returns the average age?
  
  data.each do |whichseason, person|
    if whichseason == season
      #The if statement matches the season to the current season we're finding the age for...
     person.each do |value|
      namecount += 1
      agecount += value["age"].to_i     
        #Now I'm looking through the details of people. So how do I add up value["age"]?   
  end
  if (agecount/namecount).round == 25
    return (agecount/namecount).round + 1
  else
    return (agecount/namecount).round
  end
end
end
end
