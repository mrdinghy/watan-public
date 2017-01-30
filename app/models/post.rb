class Post < ActiveRecord::Base
  translates :title, :body, :body2
  has_many :site_documents
  has_many :site_images

  belongs_to :site_image, :foreign_key => :image1_id
  belongs_to :site_image, :foreign_key => :image2_id
  belongs_to :site_image, :foreign_key => :image3_id



  has_many :institutes_posts, :dependent => :destroy
  has_many :institutes, :through => :institutes_posts

  has_many :posts_watanprograms, :dependent => :destroy
  has_many :watanprograms, :through => :posts_watanprograms

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  extend EnumerateIt
  has_enumeration_for :post_type

  acts_as_commentable
  has_many :comments
end
