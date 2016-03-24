require 'pry'

def data
  data = { 
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}
end


def get_first_name_of_season_winner(data, season)
  winner_name = nil
  winner_first_name = nil
  data.each do |season_num, info|
    if season_num == season
      info.each do |name_arrays|
        if name_arrays["status"] == "Winner"
          winner_name = name_arrays["name"].split
          winner_first_name = winner_name[0]
        end
      end
    end
  end
  winner_first_name
end



def get_contestant_name(data, occupation)
  name = nil
  data.each do |season, info|
    info.each do |name_arrays|
      if name_arrays["occupation"] == occupation
        name = name_arrays["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, info|
    info.each do |name_arrays|
      if name_arrays["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |name_arrays|
      if name_arrays["hometown"] == hometown
        return name_arrays["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  age_total = 0
  data.each do |season_num, info|
    if season_num == season
      info.each do |name_arrays|
        counter += 1
        age = name_arrays["age"].to_f
        age_total = age_total + age
      end
    end
  end
if counter != 0
  average = age_total.to_f / counter.to_f
  average = average.round
end
average
end
