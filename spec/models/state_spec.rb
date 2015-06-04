require 'rails_helper'

RSpec.describe State, type: :model do
  it('has a valid factory') { expect(build(:state)).to be_valid }
  let(:inst) { build(:state) }

  describe 'ActiveModel validations' do
  end

  describe 'ActiveRecord associations' do
  end

  context 'callbacks' do
  end

  describe 'scopes' do
  end

  describe 'public methods' do
    describe '#status' do
      it { expect(inst).to respond_to(:status) }
      it { expect(inst.status).to match('My Status') }
    end
    describe '#remark' do
      it { expect(inst).to respond_to(:remark) }
      it { expect(inst.remark).to match('My Remark') }
    end
  end

  context 'class methods' do
    it { expect(State).to respond_to(:find_by_status) }
    it { expect(State).to respond_to(:find_by_remark) }
  end
end
