require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'database' do
    it { is_expected.to have_db_column :id}
    it { is_expected.to have_db_column :email}
    it { is_expected.to have_db_column :encrypted_password}
    it { is_expected.to have_db_column :uid }
    it { is_expected.to have_db_column :image }
    it { is_expected.to have_db_column :provider }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :password }
  end

  describe 'factory' do
    it 'is valid' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end
end
