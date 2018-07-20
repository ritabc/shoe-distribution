require('spec_helper')

describe(Store) do
  context('associations') do
    it {should have_and_belong_to_many(:brands)}
  end

  context('validation for uniquness') do
    it { should validate_uniqueness_of(:store_name)}
  end
end
