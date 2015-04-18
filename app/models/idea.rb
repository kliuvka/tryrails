class Idea < ActiveRecord::Base
	mount_uploader :picture, PictureUploader

	has_many :comments

	belongs_to :user

	has_many :ideas

	validates :name, presence: { message: "you forgot your name" }
	validates :user_id, presence: true

end


