class CaloriesController < ApplicationController

  def create
  end

  def edit_rec
    
  end

  def delete_rec
     check = Calory.find_by(id: params[:id])
    if check
      check.destroy
    end

    redirect_to("/home/Main")

  end

end