class Institute < ActiveRecord::Base
  translates :name, :description
  has_many :slides


  has_many :institutes_projects, :dependent => :destroy
  has_many :projects, :through => :institutes_projects

  has_many :institutes_posts, :dependent => :destroy
  has_many :posts, :through => :institutes_posts


  has_many :pages



  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
end
