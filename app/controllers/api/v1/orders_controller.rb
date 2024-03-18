class Api::V1::OrdersController < ApplicationController
    # before_action :authenticate_user!

    # def create
    #     @current_user = current_user
    #     if params[:address].present?
    #         @shopping_address = current_user.addresses.new(allowed_params)
    #         @shopping_address.save
    #     end
    #     render json: {
    #         message: "Your Order is Successfully Placed1"
    #     }

    # end
    
    # private

    # def allowed_params
    #   params.require(:address).permit(:first_name, :last_name, :address1, :city, :state_name, :zip_code)
    # end

end
