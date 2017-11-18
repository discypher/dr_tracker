require 'rails_helper'

RSpec.describe Dependency, type: :model do
  describe 'expected methods' do
    it { is_expected.to respond_to(:required_system) }
    it { is_expected.to respond_to(:system) }
  end
end
