require 'pry'

def test_data
test_data = { 
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
  name = 0
  data[season].select {|h| if h["status"] == "Winner" then name = h["name"] end}
  name.split[0]
end

def my_method(test_data)
  test_data.map {|season,arr| arr.map {|h| if h[:status] == "Winner" then h[:name] end}}
end

def get_contestant_name(data, occupation)
  name = 0
  data.map {|season,arr| arr.map {|h| if h["occupation"] == occupation then name = h["name"] end}}
  name
end

def count_contestants_by_hometown(data, hometown)
  from_hometown = 0
  data.map {|season,arr| arr.map {|h| if h["hometown"] == hometown then from_hometown += 1 end}}
  from_hometown
end

def get_occupation(data, hometown)
  occupation = 0
  data.map {|season,arr| arr.find {|h| if h["hometown"] == hometown then occupation = h["occupation"] end}}
  occupation
end

def get_average_age_for_season(data, season)
  total = 0
  age_array = data[season].collect {|h| h["age"]}
  age_array.each {|i| total += i.to_f}
  (total / age_array.length).round
  #binding.pry
end
