require 'rails_helper'

RSpec.describe System, type: :model do
  describe 'expected methods' do
    it { is_expected.to respond_to(:priority) }
    it { is_expected.to respond_to(:team) }
    it { is_expected.to respond_to(:dependencies) }
    it { is_expected.to respond_to(:required_systems) }
    it { is_expected.to respond_to(:dependents) }
    it { is_expected.to respond_to(:dependent_systems) }
  end

  describe 'validations' do
    let(:system) { FactoryBot.create(:system) }

    describe 'priority' do
      it 'is required' do
        system.priority = nil
        expect(system).not_to be_valid
      end
    end

    describe 'description' do
      it 'is required' do
        system.description = nil
        expect(system).not_to be_valid
      end
    end

    describe 'doc link' do
      it 'is required' do
        system.doc_link = nil
        expect(system).not_to be_valid
      end
    end

    describe 'team' do
      it 'is required' do
        system.team = nil
        expect(system).not_to be_valid
      end
    end

    let(:system_w_deps) { FactoryBot.create(:system_with_dependencies) }

    describe 'dependencies' do
      it 'should have dependencies' do
        p system.dependencies
        expect(system.dependencies).not_to be_nil
      end
    end
  end
end
