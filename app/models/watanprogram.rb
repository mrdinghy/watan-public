class Watanprogram < ActiveRecord::Base
  translates :name
  has_many :slides


  has_many :posts_watanprograms, :dependent => :destroy
  has_many :posts, :through => :posts_watanprograms



  has_many :projects_watanprograms, :dependent => :destroy
  has_many :projects, :through => :projects_watanprograms

end
