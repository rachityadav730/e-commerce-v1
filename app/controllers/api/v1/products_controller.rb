class Api::V1::ProductsController < ApplicationController

    def index
        products = Product.active.includes(:variants)
        product_types = nil
        if params[:product_type_id].present? && product_type = ProductType.find_by_id(params[:product_type_id])
          product_types = product_type.self_and_descendants.map(&:id)
        end
        if product_types
          @products = products.where(product_type_id: product_types).
                               paginate(page: pagination_page, per_page: pagination_rows)
        else
          @products = products.paginate(page: pagination_page, per_page: pagination_rows)
        end

        render json: {
            item_list: @products 
        }
    end

    private

    def pagination_rows
        params[:rows] ||= 60
        params[:rows].to_i
    end
end


