class Post < ActiveRecord::Base
	belongs_to :user

	# attr_accessible :title, :description, :image, :user_id
end
