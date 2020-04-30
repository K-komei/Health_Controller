class CaloriesController < ApplicationController

    
  def create
    @calory = Calory.new(
      Day: params[:Day],
      item: params[:item],
      cal: params[:cal]
    ) 
    if @calory.save
      flash[:notice] = "Success Registration"
    
      redirect_to("/home/Main")
    else
      flash[:notice] = "Failure Registration"
      render("edit_data/Add_Cal")
    end
  end

  def add_rec
    redirect_to("/edit_data/Add_Cal")
  end

end
