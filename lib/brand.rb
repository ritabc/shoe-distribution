class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)

  validates_presence_of(:brand_name)
  validates_uniqueness_of(:brand_name)
  validates_numericality_of :price, :only_integer => false, :greater_than_or_equal_to => 0
  before_validation(:upcase_name)
  # before_save(:add_price_string)

private

  def upcase_name
    self.brand_name=(brand_name.titleize)
  end

  # def add_price_string
  #   if price.integer?
  #     self.price_string = '$' + price.to_s + '.00'
  # end
end
