require "rails_helper"

RSpec.describe User, type: :model do
    # Creamos un usuario y lo guardamos en la base de datos
    let (:user){ create(:user) }
    # Creamos un usuario inválido y lo guardamos en memoria
    let (:invalid_user) {build(:user)}

    it "has a valid factory" do
        expect(user).to be_valid   
    end
        
    it "has a unique email" do
        # El usuario es inválido pues tiene un e-mail repetido
        invalid_user.email = user.email
        expect(invalid_user).not_to be_valid
    end

    it "has a nick present" do
        invalid_user.nick = nil
        expect(invalid_user).not_to be_valid
    end

    context "with messages" do
        let(:user) { create(:user_with_messages) }
        
        it "has a valid factory" do
            expect(user.messages.count).to eq(3)
        end
    end
end