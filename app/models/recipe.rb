class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_created_at
    created_at.strftime("%b %d, %Y")
  end

  def formatted_prep_time
    # input: 125
    # output: "2 hours, 5 minutes"

    # 1 - find number of hours in prep_time
    # 2 - find remainder of minutes in prep_time
    # 3 - combine hours and minutes in a formatted string

    hours = prep_time / 60
    minutes = prep_time % 60
    time_string = ""

    

   
    time_string += "#{hours} #{'Hour'.pluralize(hours)}" if hours > 0
    time_string += " , " if hours > 0 && minutes > 0
    time_string += "#{minutes} #{'Minute'.pluralize(minutes)}" if minutes > 0
    

    time_string
  end
end
