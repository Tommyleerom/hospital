class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :appointments, dependent: :destroy
  has_many :doctros, through: :appointments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:login]
  validates :name, presence: true

  attr_writer :login

  def login
    @login || self.name || self.email
  end
end
