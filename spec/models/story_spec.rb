require 'rails_helper'

RSpec.describe Story, type: :model do

  describe 'database' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :author }
    it { is_expected.to have_db_column :intro }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :author }
    it { is_expected.to validate_presence_of :intro }
  end

  describe 'factory' do
    it 'should be valid' do
      expect(FactoryBot.create(:story)).to be_valid
    end
  end

  describe 'associations' do
     it { is_expected.to have_many :chapters}
  end
end
