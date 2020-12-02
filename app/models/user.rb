class User < ApplicationRecord
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one_attached :avatar
  has_many :likes,  dependent: :destroy
         
  validates :name, presence: true
  validates :age, presence: true
  validates :hobby, presence: true
  validates :local, presence: true
end