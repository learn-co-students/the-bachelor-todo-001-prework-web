require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  #need to return winner_name
  winner_name = ""
  data.each do |season_number,member_array|
  	if season_number == season
  		member_array.each do |member_key, value|
	  		if member_key.has_key?("status") && member_key.key("Winner")
	  			winner_name = member_key["name"].split(" ")[0].to_s
	  			#want to refactor using pop or shift or unshift
	  		end
  		end
  	end
  end
  winner_name #it's not smart
end

def get_contestant_name(data, occupation)
  # code here
  occupation_value = ""
  data.each do |season_number, member_array|
  	member_array.each do |member_key, value|
  		if member_key.has_key?("occupation") && member_key.key(occupation)
  			occupation_value = member_key["name"]
  		end
  	end
  end
  occupation_value
end

def count_contestants_by_hometown(data, hometown)
  # code here
  	counter = 0
	#search hometown and push array and value 
	data.each do |season_number, member_array|
		for count in 0...member_array.size
			if member_array[count].key(hometown)
				counter += 1
			end
		end
	end
	counter
end

def get_occupation(data, hometown)
  # code here
  occupation_value = []
  	data.each do |season_number, member_array|
  		for count in 0...member_array.size
  			 if member_array[count]["hometown"] == hometown && occupation_value == []
  			 	occupation_value << member_array[count]["occupation"]
  			 	# binding.pry
  			 end
		end

  	end
  	occupation_value.join(" ")
end

def get_average_age_for_season(data, season)
  # code here
  #iterate data hash
  #narrow scope are to use if statement
  #traverse member_array
  #get age hash value and push value to array using .to_i
  	age_average = []
  	data.each do |season_number, member_array|
  		if season == season_number
  			for count in 0...member_array.size
  				age_average.push(member_array[count]["age"].to_i) 
  			end
  		end
  	end
  	data = (age_average.inject { |sum, el| sum + el}.to_f / age_average.size).round
end
