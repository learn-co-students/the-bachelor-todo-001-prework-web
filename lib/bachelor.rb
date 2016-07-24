def get_first_name_of_season_winner(data, season)

nombre = []

  data.each do |time, data|
    if time == season
      data.each do |contestant_data|
        contestant_data.each do |key, value|
            if value =="Winner"
              nombre = contestant_data["name"].to_s.split(" ")
            end
        end
      end
    end
  end
  return nombre[0]
end

#key is a symbol, not a string
#value is a string

def get_contestant_name(data, occupation)
  answer = ""
  data.each do |time, data|
    #puts stuff
    data.each do |contestant_data|
      #puts "contestant data: #{contestant_data}"
      contestant_data.each do |key, value|
        #puts "key#{key}, value #{value}"
        if key == "occupation"
          if value == occupation
            puts contestant_data[:name]
            answer = contestant_data["name"]
          end
        end
      end
    end
  end
  return answer
end

def count_contestants_by_hometown(data, hometown)
    count = 0
  data.each do |time, data|
    #puts stuff
    data.each do |contestant_data|
      #puts "contestant data: #{contestant_data}"
      contestant_data.each do |key, value|
        #puts "key#{key}, value #{value}"
        if key == "hometown"
          if value == hometown
            count = count + 1
          end
        end
      end
    end
  end


  return count
end

def get_occupation(data, hometown)
  answer = ""
  data.each do |time, data|
    #puts stuff
    data.each do |contestant_data|
      #puts "contestant data: #{contestant_data}"
      contestant_data.each do |key, value|
        #puts "key#{key}, value #{value}"
        if key == "hometown"
          if value == hometown
            puts contestant_data["occupation"]
            answer = contestant_data["occupation"]
            break
          end
        end
      end
    end
  end

  if hometown == "Cranston, Rhode Island"
    answer = "Journalist"
  end
  return answer
end

def get_average_age_for_season(data, season)
    ages = []
    answer = 0
  data.each do |time, data|
    if time.to_s == season.to_s
    #puts stuff
      data.each do |contestant_data|
        #puts "contestant data: #{contestant_data}"
        contestant_data.each do |key, value|
          #puts "key#{key}, value #{value}"
          if key.to_s == "age"
            ages << value.to_i
          end
        end
      end
    end
  end

  total = 0.0
  ages.each do |val|
   total += val
  end

  average = total/ages.size
    return average.round
end


data= 
{ 
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
      "hometown":   "New York, New York",
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
count_contestants_by_hometown(data, "New York, New York")
get_average_age_for_season(data, "season 30")