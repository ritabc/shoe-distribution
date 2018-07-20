class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates_presence_of(:brand_name)
  validates_uniqueness_of(:brand_name)
end
