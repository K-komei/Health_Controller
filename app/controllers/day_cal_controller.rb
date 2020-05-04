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




end
