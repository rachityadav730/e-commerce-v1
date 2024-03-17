class Product < ApplicationRecord


    has_many :variants
    
    def self.active
        where("products.deleted_at IS NULL OR products.deleted_at > ?", Time.zone.now)
        #  Add this line if you want the available_at to function
        #where("products.available_at IS NULL OR products.available_at >= ?", Time.zone.now)
    end
    
    def active(at = Time.zone.now)
    deleted_at.nil? || deleted_at > (at + 1.second)
    end

    def active?(at = Time.zone.now)
    active(at)
    end
end
