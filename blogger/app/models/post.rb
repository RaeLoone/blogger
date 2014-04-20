class Post < ActiveRecord::Base
	belongs_to :user #:category
	has_many :comments

	# attr_accessible :title, :description, :image, :user_id
end
