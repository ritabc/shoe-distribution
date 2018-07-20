require('spec_helper')

describe(Brand) do
  context('associations') do
     it {should have_and_belong_to_many(:stores)}
  end

  context('validation for uniquness') do
    it { should validate_uniqueness_of(:brand_name)}
  end

  context('titlize functionality with before_save callback') do
    it('will capitalize every word before saving') do
      new_brand = Brand.create({:brand_name => 'chucks shoes'})
      expect(new_brand.brand_name).to(eq('Chucks Shoes'))
    end
  end
end
