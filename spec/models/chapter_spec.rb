require 'rails_helper'

RSpec.describe Chapter, type: :model do
  describe 'database' do
    it { is_expected.to have_db_column :content }
    it { is_expected.to have_db_column :chapter_id }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :content }
    it { is_expected.to validate_presence_of :chapter_id }
  end

  describe 'factory' do
    it 'should be valid' do
      expect(FactoryBot.create(:chapter)).to be_valid
    end
  end
end
