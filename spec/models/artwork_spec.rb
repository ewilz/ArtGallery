require 'spec_helper'

describe Artwork do

  describe 'validations' do
    let(:artwork) {Artwork.new}

    it 'is invalid without a title' do
      expect(artwork).to_not be_valid
      expect(artwork.errors[:title]).to include("can't be blank")
    end

    it 'is invalid without an artist_id' do
      expect(artwork).to_not be_valid
      expect(artwork.errors[:artist_id]). to include("can't be blank")
    end

     it 'is invalid without a date' do
      expect(artwork).to_not be_valid
      expect(artwork.errors[:date]). to include("can't be blank")
    end

    it 'is invalid without an medium_id' do
      expect(artwork).to_not be_valid
      expect(artwork.errors[:medium_id]). to include("can't be blank")
    end
  end



  describe 'associations' do
    let(:collection) {Collection.new(name: 'Parks')}
    let(:customer) {Customer.create(first_name: 'Emily', last_name: 'Williams', email: 'e@dubz.com')}
    let(:medium) {Medium.create(name: 'Watercolor')}
    let(:artist) {Artist.create(first_name: 'Emily', last_name: 'Williams', email: 'e@dubz.com')}
    let(:artwork) {Artwork.create(title: 'Beauty in the Park', artist: artist, date: '06/06/1989', medium: medium, purchase: customer, collection: collection)}

    it 'has an associated artist' do
      expect(artwork.artist_id).to eql(artist.id)
    end

    it 'has an associated medium' do
      expect(artwork.medium_id).to eql(medium.id)
    end

    it 'has an associated purchaser if purchased' do
      expect(artwork.purchase_id).to eql(customer.id)
    end

    it 'has an assciated collection' do
      expect(artwork.collection_id).to eql(collection.id)
    end


  end


end
