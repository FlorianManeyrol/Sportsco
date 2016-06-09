class Sport < ActiveRecord::Base
	has_many :seances, dependent: :destroy
	mount_uploader :photo, PhotoUploader

end
