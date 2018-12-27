def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      return contestants["name"].split(' ').first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_array|
    season_array.each do |inner_info|
      if inner_info["occupation"] == occupation
        return inner_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_array|
    season_array.each do |inner_info|
      if inner_info["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, season_array|
    season_array.find do |inner_info|
      if inner_info["hometown"] == hometown
        return inner_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  count = 0
  data[season].each do |inner_info|
    inner_info.each do |key, value|
      if key == "age"
        count += 1
        age += value.to_f
      end
    end
  end
  answer = (age/count).round
  return answer
end
