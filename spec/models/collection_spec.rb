require 'spec_helper'

describe Collection do
  describe 'validations' do

    it 'is invalid without a name' do
      collection = Collection.new
      expect(collection).to_not be_valid
      expect(collection.errors[:name]).to include("can't be blank")
    end
  end



  describe 'instance methods' do
    let(:customer) {Customer.create(first_name: 'Emily', last_name: 'Williams', email: 'e@dubz.com')}
    let(:medium) {Medium.create(name: 'Watercolor')}
    let(:artist1) {Artist.create(first_name: 'Emily', last_name: 'Williams', email: 'e@dubz.com')}
    let(:artist2) {Artist.create(first_name: 'Michael', last_name: 'Bolton', email: 'm@bolzßß.com')}
    let(:collection1) {Collection.create(name: 'Parks')}
    let!(:artwork1) {Artwork.create(title: 'Beauty in the Park', artist: artist1, date: '06/06/1989', medium: medium, purchase: customer, collection: collection1)}
    let!(:artwork2) {Artwork.create(title: 'Little Green Worm', artist: artist1, date: '06/08/1989', medium: medium, purchase: customer, collection: collection1)}
    let!(:artwork3) {Artwork.create(title: 'Forgotten Umbrella', artist: artist2, date: '06/07/1989', medium: medium, collection: collection1)}

    it 'has a method size that counts the number of works in the collection' do
      expect(collection1.size).to eql(3)
    end

    it 'has a method to count how many artists are included in a collection' do
      expect(collection1.number_of_artists). to eq(2)
    end

  end

end
