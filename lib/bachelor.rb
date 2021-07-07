def get_first_name_of_season_winner(data, season)
  data[season].each do |array|
    if array["status"] == "Winner"
      return array["name"].split(" ").first
    end
  end# code here
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |describe|
      describe.each do |key, value|
        if value == occupation
          return describe["name"]
        end
      end
    end
  end# code here
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |describe|
      if describe["hometown"] == hometown
        count += 1
      end
    end
  end
  count# code here
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |describe|
      if describe["hometown"] == hometown
        return describe["occupation"]
      end
    end
  end# code here
end

def get_average_age_for_season(data, season)
  age = 0
  count = 0
  data[season].each do |array|
    array.each do |key, value|
    count += 1
    age += array["age"].to_f
  end
end
(age/count).round# code here
end
