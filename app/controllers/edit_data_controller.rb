class EditDataController < ApplicationController
  def Add_Cal
      @calories = Calory.where(Day: Date.today)
      @Preset_Array = Preset.all
      @daycals = DayCal.all
  end

  def Add_Cal_Custom
  end

  def Add_cal
  end

end
