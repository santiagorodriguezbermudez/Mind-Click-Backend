require 'rails_helper'

RSpec.describe User do

  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }

  describe 'Associations', type: :model do
    it { should have_many(:favorites) }
    it { should have_many(:therapists) }
  end
end
