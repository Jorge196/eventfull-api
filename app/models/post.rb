class Post < ApplicationRecord
    has_one_attached :picture
    has_many :comments 

    def picture_url 
        Rails.application.routes.url_helpers.url_for(picture) if picture.attached?
    end 
end
