class Image < ActiveRecord::Base
mount_uploader :image, ImageUploader
	
  	validates :img_name, presence: true
  	validates :image, presence: true
  	validate :file_size

  	def file_size
		errors[:image] << "You cannot upload a file greater than 200kb" if image.size > 0.2.megabytes
	end
end
