require 'rails_helper'

RSpec.describe User do
  let(:other_user) { User.create(full_name: 'Pedro', email: 'pedro@test.com') }
  let(:subject) do
    described_class.new(
      full_name: 'test user',
      email: 'test@test.com',
    )
  end

  describe 'validations' do
    it 'is valid with valid attribute' do
      expect(subject).to be_valid
    end

    it 'The name of the user should exist' do
      subject.full_name = ''
      expect(subject).to_not be_valid
    end

    it 'The name of the user should be longer than 5 characters' do
      subject.full_name = 'test'
      expect(subject).to_not be_valid
    end

    it 'The email of the user should be unique' do
      other_user
      subject.email = 'pedro@test.com'
      expect(subject).to_not be_valid
    end

  end

  describe 'Associations', type: :model do
    it { should have_many(:favorites) }
    it { should have_many(:therapists) }
  end
end
