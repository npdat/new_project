require 'rails_helper'

RSpec.describe BoardingDocument, type: :model do
  it('has a valid factory') { expect(build(:boarding_document)).to be_valid }
  let(:inst) { build(:boarding_document) }

  describe 'ActiveModel validations' do
  end

  describe 'ActiveRecord associations' do
  end

  context 'callbacks' do
  end

  describe 'scopes' do
  end

  describe 'public methods' do
    describe '#name' do
      it { expect(inst).to respond_to(:name) }
      it { expect(inst.name).to match('My Name') }
    end
    describe '#gender' do
      it { expect(inst).to respond_to(:gender) }
      it { expect(inst.gender).to match(false) }
    end
    describe '#position' do
      it { expect(inst).to respond_to(:position) }
      it { expect(inst.position).to match('My Position') }
    end
    describe '#birthday' do
      it { expect(inst).to respond_to(:birthday) }
      it { expect(inst.birthday).to eq DateTime.new(2014,06,02,10,40,06)}
    end
    describe '#birthday_place' do
      it { expect(inst).to respond_to(:birthday_place) }
      it { expect(inst.birthday_place).to match('My birthday place') }
    end
    describe '#passport' do
      it { expect(inst).to respond_to(:passport) }
      it { expect(inst.passport).to match('My Passport') }
    end
    describe '#nationality' do
      it { expect(inst).to respond_to(:nationality) }
      it { expect(inst.nationality).to match('My Nationlity') }
    end
    describe '#flight_ticket' do
      it { expect(inst).to respond_to(:flight_ticket) }
      it { expect(inst.flight_ticket).to match('My Flight Ticket') }
    end
    describe '#is_flight' do
      it { expect(inst).to respond_to(:is_flight) }
      it { expect(inst.is_flight).to match(true) }
    end
  end
end
