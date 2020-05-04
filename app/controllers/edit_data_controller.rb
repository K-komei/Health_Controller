class EditDataController < ApplicationController
  def Add_Cal
      @calories = Calory.where(Day: Date.today)
 
  end

  def Add_Cal_Custom
  end

end
