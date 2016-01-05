class Post < ActiveRecord::Base
  belongs_to :moderator
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  # validates_attachment_size :image, :less_than => 5.megabytes
  
  validates :title, presence: true
  validates :content, presence: true
  
end
