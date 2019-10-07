require 'pry'
def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
   holiday_hash[:winter].each do |holiday, decorations|
     decorations.push(supply)
 end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]= supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  winter_values = holiday_hash[:winter].fetch_values(:christmas, :new_years).flatten
  winter_values
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

 holiday_hash.each do |season, holidays|  
   puts "#{season.to_s.capitalize!}:"
  holidays.each do |holiday_name, supply_array|
   puts  "  #{holiday_name.to_s.split("_").collect{|word| word.capitalize}.join(" ")}: #{supply_array.join(", ")}"
  end
 end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

 bbq_holiday = []
 holiday_hash.collect do |season, holidays|
   holidays.collect do |holiday_name, supply_array|
  if supply_array.include?("BBQ")
     bbq_holiday << holiday_name
   end
  end
 end
 bbq_holiday
end








