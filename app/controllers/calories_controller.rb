class CaloriesController < ApplicationController

    
  def create
    @calory = Calory.new(
      Day: params[:Day],
      cal: params[:cal]
    ) 
    @calory.save
    redirect_to("/home/Main")
  end
end
