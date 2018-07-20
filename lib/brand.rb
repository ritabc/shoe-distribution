class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)

  validates_presence_of(:brand_name)
  validates_uniqueness_of(:brand_name)
  validates_numericality_of :price, :only_integer => false, :greater_than_or_equal_to => 0
  before_validation(:upcase_name)
  
private

  def upcase_name
    self.brand_name=(brand_name.titleize)
  end

  # def convert_num_to_price
  #   self.price
  # end
end
