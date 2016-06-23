class InstitutesPost < ActiveRecord::Base
  belongs_to :post
  belongs_to :institute
end
