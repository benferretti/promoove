class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :collaborations
  has_many :roles, through: :collaborations
  has_many :projects, through: :collaborations
  has_many :donations
end
