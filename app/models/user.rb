class User < ActiveRecord::Base

  has_and_belongs_to_many :leagues

  has_and_belongs_to_many :teams

  has_and_belongs_to_many :players


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
