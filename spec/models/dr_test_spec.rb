require 'rails_helper'

RSpec.describe DrTest, type: :model do
  describe 'expected methods' do
    it { is_expected.to respond_to(:system_under_tests) }
    it { is_expected.to respond_to(:start_date) }
    it { is_expected.to respond_to(:end_date) }
    it { is_expected.to respond_to(:description) }
    it { is_expected.to respond_to(:notes)}
  end
end
