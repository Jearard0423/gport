class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend FriendlyId
  friendly_id :username, use: :slugged 
  
  has_one :portfolio, dependent: :
  
  validates :username,
  presence: true, 
  uniqueness: {case_sensitive: false},
  format: {with: /\A[a-zA-Z0-9_]+\z/, message: "letters, numbers, underscores only"},
  length: {minimum: 3, maximum: 30}

  PLANS = %w[free pro].freeze
  validates :plan, inclusion: {in: PLANS}
end
