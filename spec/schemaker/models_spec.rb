require 'models_helper'

describe models_class do
  let(:models) do
    # subject, object, join
    models_class.new UserAccount, Role, UsersRoles, :subject_key => :troles
  end

  describe '#configure' do
    it 'should configure all models' do
      models.configure      
      
      logs_matches(models.logs, 'UserAccount.has_many :troles').should
    end
  end
end

describe "quick join models" do
  let(:models) do
    # subject, object, join
    models_class.new UserAccount, Role, nil, :subject_key => :troles
  end

  describe '#quick_join' do
    it 'should configure all models' do
      models.quick_join      
      
      logs_matches(models.logs, 'UserAccount.has_and_belongs_to_many :role').should
    end
  end
end