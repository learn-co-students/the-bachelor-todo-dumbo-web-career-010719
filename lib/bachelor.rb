require 'pry'

def get_first_name_of_season_winner(data, season)
    for people in data[season]
      people.each do |k,v|
      if v == "Winner"
          return people["name"].split(" ").first
      end 
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
    data.each do |show_season, array|
      for element in array
        element.each do |att, detail|
          if detail == occupation
            return element["name"]  
          end  
        end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count=0
    data.each do |show_season, array|
      array.each do |element|
        element.each do |k,v|
          if v == hometown
            count+=1
          end
        end
      end
    end
    return count
end

def get_occupation(data, hometown)
  # code here
  result=[]
  data.each do |show_season, array|
    array.each do |element|
      element.each do |k,v|
        if v == hometown
          result<< element["occupation"]
        end
      end
    end
  end
  return result.first
end

def get_average_age_for_season(data, season)
  # code here
  array_age=[]
  for people in data[season]
    people.each do |k, v|
     if k == "age"
         array_age<< v.to_i
     end 
   end
 end
  (array_age.inject {|sum, el| sum + el}.to_f / array_age.size).round
end
