class Store < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates_presence_of(:store_name)
  validates_uniqueness_of(:store_name)
  before_save(:upcase_name)

private

  def upcase_name
    self.store_name=(store_name.titleize)
  end
end
