require 'spec_helper'

describe Medium do
  let(:medium){Medium.new()}
  let!(:medium1){Medium.create(name: 'watercolor')}
  let(:medium2) {Medium.create(name: 'watercolor')}
  describe 'validations' do

    it 'is invalid without a name' do
      expect(medium).to_not be_valid
      expect(medium.errors[:name]).to include("can't be blank")
    end

    it 'is invalid with a repeat name' do
      expect(medium2).to_not be_valid
      expect(medium2.errors[:name]).to include("has already been taken")
    end

  end
end
