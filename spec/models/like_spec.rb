require 'rails_helper'

RSpec.describe Like, type: :model do
  it { should validate_presence_of(:product_id) }
  it { should validate_presence_of(:user_id) }
end
