# def get_first_name_of_season_winner(data, season)
#   data.each do |season, contestant_details_arr|
#     contestant_details_arr.each do |hash_elem|
#       hash_elem.each do |key, value|
#         if key == "status"
#           unless value != "Winner"
#             hash_elem.each do |k,v|
#               if k == "name"
#                 puts v
#                 return v
#               end
#             end
#           end
#         end
#       end
#       # name_string = hash[name]
#       # name_string.split(" ").each_with_index {|str, idx| puts str if idx == 0 }

#     end
#   end
# end

#Return only the first name! use index 0.

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestant_details_arr|
    if season_num == season
    contestant_details_arr.each do |hash_elem|
      hash_elem.each do |key, value|
        if key == "status"
          unless value != "Winner"
            hash_elem.each do |k,v|
              if k == "name"
                puts v.split(" ")[0]
                return v.split(" ")[0]
              end
            end
          end
        end
      end
    end
  end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season_num, contestant_details_arr|
 
    contestant_details_arr.each do |hash_elem|
      hash_elem.each do |key, value|
        if key == "occupation"
          unless value !=  occupation
            hash_elem.each do |k,v|
              if k == "name"
                puts v
                return v
              end
            end
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
   data.each do |season_num, contestant_details_arr|
 
    contestant_details_arr.each do |hash_elem|
      hash_elem.each do |key, value|
        if key == "hometown"
          unless value !=  hometown
            # hash_elem.each do |k,v|
            #   if k == "name"
            #     puts v
            #     return v
            #   end
            # end
            count +=1
          end
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)

   data.each do |season_num, contestant_details_arr|
 
    contestant_details_arr.each do |hash_elem|
      hash_elem.each do |key, value|
        if key == "hometown"
          unless value !=  hometown
            hash_elem.each do |k,v|
              if k == "occupation"
                puts v
                return v
              end
            end
           
          end
        end
      end
    end
  end
 
end

def get_average_age_for_season(data, season)
  sum = 0.0
  head_count = 0
  data.each do |season_num, contestant_details_arr|
  if season ==  season_num
    contestant_details_arr.each do |hash_elem|
      hash_elem.each do |key, value|
        if key == "age"
          sum += value.to_i
          head_count +=1
          # unless value !=  hometown
          #   hash_elem.each do |k,v|
          #     if k == "occupation"
          #       puts v
          #       return v
          #     end
          #   end
           
          # end
        end
      end
    end
  end
  end
  ans = sum/head_count
  ans.to_f.round
end
