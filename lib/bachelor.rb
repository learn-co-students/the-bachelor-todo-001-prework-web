require 'pry'

def get_first_name_of_season_winner(data, season)
  # one way:
  # find the winner with .find
  # returns contestant hash to winner
  #winner = data[season].find do |contestant|
  #  contestant['status'] == 'Winner'
  #end

  # Winner: Colby Gatte
  # split: ['Colby', 'Gatte']
  # first item: [0]
  #winner['name'].split(' ')[0]

  # short way:
  data[season].find{ |c| c['status'] == 'Winner' }['name'].split(' ')[0]
end

def get_contestant_name(data, occupation)
  # here is one way to do it
  #the_one = nil
  # data.each do |season, contestants|
  #   the_one = contestants.find do |contestant|
  #     contestant['occupation'] == occupation
  #   end
  #   if the_one != nil
  #     break
  #   end
  #end
  #the_one['name']

  # here is another way to do it with one line of code
  data.values.flatten.find { |c| c['occupation'] == occupation }['name']

end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  # flatten structure down to just contestants
  # makes much easier for loopin'
  data.values.flatten.each { |c|
    if c['hometown'] == hometown
      counter+=1
    end
  }

  counter
end

def get_occupation(data, hometown)
  # flatten structure like we've been doing
  # dis 1 easy:
  data.values.flatten.find{ |c| c['hometown'] == hometown }['occupation']
end

def get_average_age_for_season(data, season)
  sum = 0
  total_c = data[season].length

  data[season].each { |c|
    sum += c['age'].to_f
  }

  ((sum / total_c) + 0.5).to_i
end
