class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy

  has_attached_file :image, styles: { medium: "400x600#", thumb: "100x100#" }, default_url: "movie-poster-default.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
