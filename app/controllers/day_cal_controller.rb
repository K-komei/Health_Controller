class DayCalController < ApplicationController
    def Add_Item
        @DayCal = DayCal.new(
          Day: Date.today,
          item: params[:item],
          cal: params[:cal],
          user_id: session[:user_id]
        ) 
        if @DayCal.save
          redirect_to("/edit_data/Add_cal")
        end
      end

      def Add_Preset
        @Priset = Priset.new(
            Item: params[:item],
            cal:  params[:item],
            user_id: session[:user_id]
            )
            @Priset.save
      end

      def VeiwItems
        @Priset_Array = Priset.all
      end

      def reset_daycal
        DayCal.delete_all
        redirect_to("/edit_data/Add_cal")
      end

      def delete_rec
        check = DayCal.find_by(id: params[:id])
       if check
         check.destroy
       end
   
       redirect_to("/edit_data/Add_cal")
   
     end

     def daycal_save
      @cals=DayCal.all
      @cals.each do | savecal |
        calory = Calory.new(
          Day: Date.today,
          item: savecal.item,
          cal: savecal.cal,
          user_id: session[:user_id]
        ) 
        calory.save
      end
      DayCal.delete_all
      redirect_to("/home/Main")

     end
   




end
