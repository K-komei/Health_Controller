class HomeController < ApplicationController

    def Main
        @calories = Calory.where(Day: Date.today)
        @Mission_calory = 1700 
        @Total_calory = Calory.where(Day: Date.today).sum(:cal)
        @Difference_calory = @Mission_calory - @Total_calory


    end
    
    def login
    end


end
