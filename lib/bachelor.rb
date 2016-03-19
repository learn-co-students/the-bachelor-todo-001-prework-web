def get_first_name_of_season_winner(data, season)
  data[season].each do |i|
    i.each do |j,k|
      if k=="Winner"
        return i["name"].split(' ').first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |i,g|
    g.each do |z|
      z.each do |j,k|
        if k==occupation
          return z["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  n=0
  data.each do |i,g|
    g.each do |z|
      z.each do |j,k|
        if k==hometown
          n+=1
        end
      end
    end
  end
  return n

  # code here
end

def get_occupation(data, hometown)
  # code here
  data.each do |i,g|
    g.each do |z|
      z.each do |j,k|
        if k==hometown
          return z["occupation"]
        end
      end
    end
  end

end

def get_average_age_for_season(data, season)
  # code here
  n=0
  count=0
   data[season].each do |i|
    i.each do |j,k|
      if j=="age"
        n+=(k.to_i)
        count+=1
      end
    end
  end
  if (n.to_f/count)-(n/count)>=0.5
    return n/count+1
  else
    return n/count
  end
end
