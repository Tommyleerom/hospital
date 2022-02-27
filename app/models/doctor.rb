class Doctor < ApplicationRecord

  has_one :category
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:login]

  validates :name, presence: true

  attr_writer :login

  def login
    @login || self.name || self.email
  end


end
