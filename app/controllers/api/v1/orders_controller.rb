class Api::V1::OrdersController < ApplicationController
    before_action :authenticate_user!

    # def index
    #     @current_user = current_user
    # end

    # def create
    #     @current_user = current_user
    #     if params[:address].present?
    #         @shopping_address = current_user.addresses.new(allowed_params)
    #         @shopping_address.default = true          if current_user.default_shipping_address.nil?
    #         @shopping_address.billing_default = true  if current_user.default_billing_address.nil?
    #         @shopping_address.save
    #         @form_address = @shopping_address
    #     elsif params[:shopping_address_id].present?
    #         @shopping_address = current_user.addresses.find(params[:shopping_address_id])
    #     end

    # end

    # private

    # def allowed_params
    #   params.require(:address).permit(:first_name, :last_name, :address1, :address2, :city, :state_id, :state_name, :zip_code, :default, :billing_default, :country_id)
    # end
end
