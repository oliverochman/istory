require 'rails_helper'

RSpec.describe Chapter, type: :model do
  describe 'database' do
    it { is_expected.to have_db_column :content }
    it { is_expected.to have_db_column :chapter_id }
    it { is_expected.to have_db_column :choice_a }
    it { is_expected.to have_db_column :choice_b }
    it { is_expected.to have_db_column :choice_c }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :content }
    it { is_expected.to validate_presence_of :chapter_id }
    it { is_expected.to validate_presence_of :choice_a }
    it { is_expected.to validate_presence_of :choice_b }
  end

  describe 'factory' do
    let(:story) { FactoryBot.create(:story)}
    it 'should be valid' do
      expect(FactoryBot.create(:chapter, story: story)).to be_valid
    end
  end

  describe 'associations' do
     it { is_expected.to belong_to :story}
  end
end
