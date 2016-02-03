def get_first_name_of_season_winner(data, season)
  winner = data[season].find {|contestant| contestant.fetch("status") == "Winner"}
  winner.fetch("name").split(" ")[0]
end

def get_contestant_name(data, occupation)
  get_contestants(data).find {|contestant| contestant.fetch("occupation") == occupation}.fetch("name")
end

def count_contestants_by_hometown(data, hometown)
  get_contestants(data).select {|contestant| contestant.fetch("hometown") == hometown}.size
end

def get_occupation(data, hometown)
  contestant_occupation = get_contestants(data).find {|contestant| contestant.fetch("hometown") == hometown}.fetch("occupation")
  contestant_occupation || "No one is from #{hometown}."
end

def get_average_age_for_season(data, season)
  age_total = data[season].inject(0) do |age_total, contestant|
    age_total + contestant["age"].to_f
  end
  (age_total/(data.fetch(season).size)).round
end

#////////////////////////////////////////////////////////Helpers
def get_contestants(data)
  data.values.flatten
end
