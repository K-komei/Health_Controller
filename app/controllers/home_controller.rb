class HomeController < ApplicationController

    def Main
        @calories = Calory.where(Day: Date.today ,user_id: session[:user_id])
        @Mission_calory = 1700 
        @Total_calory = Calory.where(Day: Date.today ,user_id: session[:user_id]).sum(:cal)
        @Difference_calory = @Mission_calory - @Total_calory
        @Graph = Calory.where(user_id: session[:user_id]).pluck(:Day, :cal)
        

        

    end

    def login
    end

end
