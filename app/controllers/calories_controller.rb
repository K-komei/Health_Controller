class CaloriesController < ApplicationController

    
  def create
    @calory = Calory.new(
      Day: params[:Day],
      item: params[:item],
      cal: params[:cal],
      user_id: session[:user_id]
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

  def edit_rec
    
  end

  def delete_rec
     check = Calory.find_by(id: params[:id])
    if check.destroy()
      
      flash[:notice] = "note"
    else
      flash[:notice] = "nots"
    end
    redirect_to("/home/Main")

  end

end
