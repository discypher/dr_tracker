require 'rails_helper'

RSpec.describe Priority, type: :model do
  describe 'expected methods' do
    it { is_expected.to respond_to(:systems) }
    it { is_expected.to respond_to(:level) }
  end
  context "with good data" do
    let(:priority) { FactoryBot.create(:priority) }
    it "should require a level" do
      priority.level = nil
      expect(priority).not_to be_valid
    end
  end
end
