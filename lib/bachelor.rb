require"pry"

# returns 'Tessa' when passed the data and 'season 10'
# returns 'Courtney' when passed the data and 'season 16'
# returns 'Emily' when passed the data and 'season 15'
def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    person.each do |k,v|
      if v == "Winner"
        full_name =  person["name"].split
        return full_name[0]
      end
    end
  end
end
# returns the name of the woman who has that occupation
def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |people|
      people.each do |k,v|
        if v == occupation
        return people["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, info|
    info.each do |people|
      people.each do |k,v|
        if v == hometown
          count += 1
        end
      end
    end
  end
  return count
end
# returns the occupation of the first contestant who hails from that hometown.
def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |people|
      people.each do |k,v|
        if v == hometown
          return people["occupation"]
        end
      end
    end
  end
end
# Iterate through the hash and
# return the average age of all of the contestants for that season
# How will you collect the ages of each contestant and average them?
# Remember that the values of the "age" keys are not numbers,
# they are strings. How do we convert strings to numbers in Ruby?
def get_average_age_for_season(data, season)
  count = 0
  age = 0
  data[season].each do |info|
    info.each do |k,v|
      if k == "age"
        count += 1
        age += v.to_f
      end
    end
  end
  avg_age = (age / count).round
  return avg_age
end
