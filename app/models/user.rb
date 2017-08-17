class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :live_portfolio, -> { live }, foreign_key: :user_id, class_name: "Portfolio"
  has_many :portfolios
  has_many :holdings, through: :live_portfolio
end
