class Project < ActiveRecord::Base
  translates :name, :description
  belongs_to :institute

  has_many :institutes_projects, :dependent => :destroy
  has_many :institutes, :through => :institutes_projects


  has_many :projects_watanprograms, :dependent => :destroy
  has_many :watanprograms, :through => :projects_watanprograms


end
