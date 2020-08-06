require 'pry'

def all_seasons(data)
  data.values.flatten 
end

def get_first_name_of_season_winner(data, season)
    data[season].find do |person|
      person["status"] == "Winner"
     return person["name"].split(" ").first 
    end
end

def get_contestant_name(data, occupation)
 all_seasons(data).find do |contestant|
       if contestant ["occupation"] == occupation  
       return contestant["name"]
    end
  end
end
 #try case statement here?? 
def count_contestants_by_hometown(data, hometown)
  all_seasons(data).reduce(0) do |sum, contestant|
   if contestant["hometown"] == hometown 
      sum + 1 
   else 
      sum 
   end
  end
end
 
def get_occupation(data, hometown)
  all_seasons(data).find do |contestant|
    if contestant["hometown"] == hometown 
      return contestant["occupation"] 
    end
  end 
end

def get_average_age_for_season data, season 
        average = data[season].reduce(0) do |sum, contestant|
            sum += contestant["age"].to_f 
        end / data[season].length 
        average.round
      end 