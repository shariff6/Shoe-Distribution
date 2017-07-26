class Brand < ActiveRecord::Base
  has_many :distributions
  has_many :stores, through: :distributions
  validates(:name, :presence => true)
end
