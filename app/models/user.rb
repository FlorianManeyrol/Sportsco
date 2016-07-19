class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :seances, dependent: :destroy
  has_many :sports, :through => :seances
  
  #validates user
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :birth, presence: true
	validates :sex, presence: true
  

  #upload profil picture
	mount_uploader :picture, PictureUploader


	#to have name in activeadmin
	def name
		email
	end
end
