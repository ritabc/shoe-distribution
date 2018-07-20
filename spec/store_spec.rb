require('spec_helper')

describe(Store) do
  context('associations') do
    it {should have_and_belong_to_many(:brands)}
  end

  context('validation for uniquness') do
    it { should validate_uniqueness_of(:store_name)}
  end

  context('titlize functionality with before_save callback') do
    it('will capitalize every word before saving') do
      new_store = Store.create({:store_name => 'Store on washington st'})
      expect(new_store.store_name).to(eq('Store On Washington St'))
    end
  end
end
