require 'active_record/active_record_helper'
require 'models_helper'
describe models_class do
  let(:models) do
    # subject, object, join
    models_class.new UserAccount, Role, UsersRoles, :subject_key => :troles
  end

  describe '#configure' do
    before(:all) do
      models.configure      
    end
    
    it 'should configure all models (logs)' do
      logs_matches(models.logs, 'UserAccount.has_many :troles').should be_true
      logs_matches(models.logs, 'UsersRoles.belongs_to :role').should be_true
      logs_matches(models.logs, 'UsersRoles.belongs_to :user_account').should be_true
      logs_matches(models.logs, 'Role.has_many :user_accounts').should be_true
    end
    
    it 'should configure all models (shoulda)' do
      UserAccount.create!.should have_many(:troles).through(:user_roles)
      Role.create!.should have_many(:user_accounts).through(:user_roles) 
      UsersRoles.create!.should belong_to(:role)
      UsersRoles.create!.should belong_to(:user_account)
    end

    describe 'should configure all models (manipulations with associations)' do
      before(:each) do
        @user_account = UserAccount.create(:name => "Marixa")
        @role = Role.create(:name => "admin")
      end
        
      it "should add roles to account" do
        @user_account.troles << @role
        @role.save!
        @user_account.troles.size.should == 1
      end

      it "should add accounts to role" do
        @role.user_accounts << @user_account
        @role.save!
        @role.user_accounts.first.should == @user_account 
      end
    end 
  end
end
