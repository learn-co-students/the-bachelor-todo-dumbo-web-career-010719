require 'pry'

def get_first_name_of_season_winner(data, season)
  full_name = ""
  array = []
  data.map do |seasons, contestants|
    if seasons == season
    contestants.map do |contestant|
      if contestant["status"] == "Winner"
        full_name = contestant["name"]
        array = full_name.split(" ")
        end
      end
    end
  end
  return array[0]
end

def get_contestant_name(data, occupation)
  data.map do |seasons, contestants|
    contestants.map do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  n = 0
  data.map do |seasons, contestants|
    contestants.map do |contestant|
      if contestant["hometown"] == hometown
        n += 1
      end
    end
  end
  return n
end

def get_occupation(data, hometown)
  data.map do |seasons, contestants|
    contestants.map do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  array =[]
  data.map do |seasons, contestants|
    if seasons == season
      contestants.map do |contestant|
        array << contestant["age"].to_i
      end
    end
  end
  averagef = array.inject{ |sum, el| sum + el }.to_f / array.size
  averagei = array.inject{ |sum, el| sum + el }.to_i / array.size
  if averagef - averagei > 0.5
    averagef.ceil
  else averagef.floor
  end
end
