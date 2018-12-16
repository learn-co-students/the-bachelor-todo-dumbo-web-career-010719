def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person|
    if person["status"] == "Winner"
      return person["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season|
    season[1].each do |s|
      if s["occupation"] == occupation
        return s["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  
  data.each do |season|
    season[1].each do |s|
      if s["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season|
    season[1].each do |s|
      if s["hometown"] == hometown
        return s["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  total = 0
  
  data[season].each do |person|
    total += person["age"].to_i
    counter += 1
  end
  total.fdiv(counter).round
end
