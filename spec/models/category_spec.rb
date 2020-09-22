require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    described_class.new(
      name: 'Football',
      priority: 1
    )
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
  context 'Associations' do
    it { should have_many(:articles) }
  end
end
