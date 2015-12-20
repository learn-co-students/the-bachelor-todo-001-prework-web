def get_first_name_of_season_winner(data_source, season)
  selected_season = data_source[season]
  winner = get_winner_by_season(selected_season)
  winner[0]["name"].split(" ").first
end

def get_winner_by_season(data)
  data.select { |cast| cast.fetch("status") == "Winner" }
end

def get_contestant_name(data, occupation)
  contestents = get_all_contestents(data)
  contestent_with_occupation = contestents.select { |contestent| contestent["occupation"] == occupation }
  contestent_with_occupation[0]["name"]
end

def get_all_contestents(data)
  all_players = []
  data.map do |key, value|
    all_players << value
  end
  all_players.flatten
end

def count_contestants_by_hometown(data, hometown)
  contestents = get_all_contestents(data)
  contestent_from_hometown = contestents.select { |contestent| contestent["hometown"] == hometown }
  contestent_from_hometown.size
end

def get_occupation(data, hometown)
  contestents = get_all_contestents(data)
  contestent_from_hometown = contestents.select { |contestent| contestent["hometown"] == hometown }
  contestent_from_hometown[0]["occupation"]
end

def get_average_age_for_season(data, season)
  season_data = get_season_data(data, season)
  total_age = season_data.map { |contestent| contestent["age"].to_i }
  average = total_age.reduce(:+) / season_data.size.to_f
  average.round
end

def get_season_data(data, season)
  data[season]
end