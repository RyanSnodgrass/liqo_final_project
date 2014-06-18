class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_and_belongs_to_many :ingredients
	has_and_belongs_to_many :recipes
	has_many :glasses, through: :user_owned_glasses
	has_many :notes
end