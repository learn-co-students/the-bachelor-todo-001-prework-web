def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data.each do |k,v|
    if k == season
        v.each_index do |x|
            if data[k][x]["status"] == "Winner"
                name = data[k][x]["name"].split(" ")
            end
        end
    end
end
name[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = []
  data.each do |k,v|
    v.each_index do |x|
        if data[k][x]["occupation"] == occupation
            name = data[k][x]["name"]
        end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |k,v|
    v.each_index do |x|
        if data[k][x]["hometown"] == hometown
            count += 1
        end
    end
end
count
end

def get_occupation(data, hometown)
  # code here
  job = ""
  data.each do |k,v|
    v.each_index do |x|
        if job == ""
            if data[k][x]["hometown"] == hometown
                job = data[k][x]["occupation"]
            end
        end
    end
end
job
end

def get_average_age_for_season(data, season)
  # code here
  count = 0
 data.each do |k,v|
    if k == season
        v.each_index do |x|
            count += data[k][x]["age"].to_i
        end
    end
end 
count = (count.to_f/data[season].length).to_f
count.round
end

