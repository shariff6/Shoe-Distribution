class Store < ActiveRecord::Base
  has_many :distributions
  has_many :brands, through: :distributions
  validates(:name, :presence => true)

end
