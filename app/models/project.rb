class Project < ActiveRecord::Base
  translates :name, :description
  belongs_to :institute
  belongs_to :country

  has_many :institutes_projects, :dependent => :destroy
  has_many :institutes, :through => :institutes_projects


  has_many :projects_watanprograms, :dependent => :destroy
  has_many :watanprograms, :through => :projects_watanprograms

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
