class Project < ApplicationRecord
  belongs_to :portfolio
  has_many :tags, :dependent: :destroy
  has_many_attached :images 
  acts_as_list scope: :portfolio 

  VALID_URL = URI: :DEFAULT_PARSER.make_regexp(%w[http https])

  validates :title, presence: true, length: { maximum: 80}

  validates :description, length: { maximum: 500 }

  validates :url, format: { with: VALID_URL, message: "must be http/https "}, allow_blank: true 

  private

  def sanitize_fields = [:title, :description]
end
