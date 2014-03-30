require 'spec_helper'

describe Artist do
  describe 'validations' do
    let(:artist) {Artist.new}
    let(:valid_attrs) {{first_name: 'Emily', last_name: 'Williams', email: 'e@dubz.com'}}
    let!(:artist1)  {Artist.create(valid_attrs)}
    let(:artist2) {Artist.new(valid_attrs)}


    it 'is invalid without a first name' do
      expect(artist).to_not be_valid
      expect(artist.errors[:first_name]).to include("can't be blank")
    end


    it 'is invalid without a last name' do
      expect(artist).to_not be_valid
      expect(artist.errors[:last_name]).to include("can't be blank")
    end


    it 'is invalid without an email' do
      expect(artist).to_not be_valid
      expect(artist.errors[:email]).to include("can't be blank")
    end

    it 'is invalid without a unique email' do
      expect(artist2).to_not be_valid
      expect(artist2.errors[:email]).to include("has already been taken")
    end


  end

end
