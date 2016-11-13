class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :movies
  has_many :reviews, dependent: :destroy

  validates :username, presence: true, uniqueness: { case_sensitive: true }

  has_attached_file :profile_image, styles: { medium: "250x250#", thumb: "150x150#" }, default_url: "profile-image-default.png"
  validates_attachment_content_type :profile_image, content_type: /\Aimage\/.*\z/
end
