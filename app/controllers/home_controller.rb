class HomeController < ApplicationController

    def Main
        @calories = Calory.where(Day: Date.today)
    end
    
    def login
    end


end
