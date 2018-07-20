require('spec_helper')

describe(Brand) do
  context('associations') do
     it {should have_and_belong_to_many(:stores)}
  end

  context('validation for uniqueness') do
    it('will not add another duplicate brand') do
      new_brand = Brand.create({:brand_name => 'Crocs', :price => 5})
      new_brand2 = Brand.create({:brand_name => 'Crocs', :price => 5})
      expect(Brand.all).to(eq([new_brand]))
    end
  end
  #
  # context('validation for uniquness') do
  #   binding.pry
  #   it { should validate_uniqueness_of(:brand_name)}
  # end

  context('titleize functionality with before_save callback') do
    it('will capitalize every word before saving') do
      new_brand = Brand.create({:brand_name => 'chucks shoes'})
      expect(new_brand.brand_name).to(eq('Chucks Shoes'))
    end
  end

  context('validates price input for positive numbers') do
    it('will not save if price if negative') do
      new_brand = Brand.create({:brand_name => 'chucks shoes', :price => -4})
      expect(Brand.all).to(eq([]))
    end
  end
end
