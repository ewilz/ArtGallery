require 'spec_helper'

describe Customer do
  describe 'validations' do
    let(:valid_attrs){{first_name: 'Emily', last_name: 'Williams', email: 'e@dubz.com'}}
    let(:customer) {Customer.new}
    let!(:customer1) {Customer.create(valid_attrs)}
    let(:customer2) {Customer.new(valid_attrs)}

    it 'is invalid without a first name' do
      expect(customer).to_not be_valid
      expect(customer.errors[:first_name]).to include("can't be blank")
    end

    it 'is invalid without a last name' do
      expect(customer).to_not be_valid
      expect(customer.errors[:last_name]).to include("can't be blank")
    end

    it 'is invalid without an email' do
      expect(customer).to_not be_valid
      expect(customer.errors[:email]).to include("can't be blank")
    end

    it 'is invalid without a unique email' do
      expect(customer2).to_not be_valid
      expect(customer2.errors[:email]).to include("has already been taken")
    end
  end
end
