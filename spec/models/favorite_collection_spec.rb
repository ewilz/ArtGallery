require 'spec_helper'

describe FavoriteCollection do
  describe 'validity' do
    let(:favcollection) {FavoriteCollection.new}

      it 'is invalid without an customer_id' do
        expect(favcollection).to_not be_valid
        expect(favcollection.errors[:customer_id]). to include("can't be blank")
      end

      it 'is invalid without an collection_id' do
        expect(favcollection).to_not be_valid
        expect(favcollection.errors[:collection_id]). to include("can't be blank")
      end
  end

  describe 'assocations' do
    let!(:collection) {Collection.create(name: 'Parks')}
    let!(:customer) {Customer.create(first_name: 'Emily', last_name: 'Williams', email: 'e@dubz.com')}
    let(:favcollection) {FavoriteCollection.create(customer: customer, collection: collection)}

    it 'has an associated customer' do
      expect(favcollection.customer_id).to eq(customer.id)
    end

    it 'has an associated collection' do
      expect(favcollection.collection_id).to eq(collection.id)
    end
  end

end
