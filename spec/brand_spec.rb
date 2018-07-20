require('spec_helper')

describe(Brand) do
  context('associations') do
     it {should have_and_belong_to_many(:stores)}
  end

  context('validation for uniquness') do
    it { should validate_uniqueness_of(:brand_name)}
  end
end
