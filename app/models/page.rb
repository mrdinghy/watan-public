class Page < ActiveRecord::Base
  translates :title, :body
  belongs_to :institute
end
