def get_first_name_of_season_winner(data, season)
  n='' # code here
  a=data[season]

a.each do |e|
  e.each do |key, value|
  if e[key]=="Winner"
      
    n=e["name"]
   
    end
  end
end
n.split.shift
end


def get_contestant_name(data, occupation)
    n='' # code here

data.each do |key1, value1|
value1.each do |e|
  e.each do |key, value|
  if e[key]==occupation
      
    n=e["name"]
    
    end
  end
end
end
n# code here
end

def count_contestants_by_hometown(data, hometown)
    n=[] # code here

data.each do |key1, value1|
value1.each do |e|
  e.each do |key, value|
  if e[key]==hometown
      
    n<<e["name"]
    
    end
  end
end
end
n.size
end

def get_occupation(data, hometown)
     n=[] # code here

data.each do |key1, value1|
value1.each do |e|
  e.each do |key, value|
  if e[key]==hometown
      
    n<<e["occupation"]
    
    end
  end
end
end
n.shift # code here
end

def get_average_age_for_season(data, season)
  total_age = 0
   counter = 0
   data.each do |key, value|
     if key == season
       value.each do |element|
          total_age += element["age"].to_i
          counter += 1
        end
      end
    end
    (total_age / counter.to_f).round
end
