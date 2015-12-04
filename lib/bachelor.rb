require 'pry'

def get_first_name_of_season_winner(data, season)
  first_name = ""
  full_name = ""

  data.each do |season_num, data|
    if season_num == season
      data.each do |i| # its in an array
        if i.has_value?("Winner")
          full_name = data["name"]
        end
      end
    end
  binding.pry
  end

end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end

=begin
{
   "season 19":[
      {
         "name":"Ashley Iaconetti",
         "age":"26",
         "hometown":"Great Falls, Virginia",
         "occupation":"Nanny/Freelance Journalist",
         "status":""
      },
      {
         "name":"Becca Tilley",
         "age":"26",
         "hometown":"Shreveport, Louisiana[b]",
         "occupation":"Chiropractic Assistant",
         "status":""
      },
=end
