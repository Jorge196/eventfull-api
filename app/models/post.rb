class Post < ApplicationRecord
    has_one_attached :post_image
    has_many :comments 

    def post_image_url 
        Rails.application.routes.url_helpers.url_for(post_image) if post_image.attached?
    end 
end
