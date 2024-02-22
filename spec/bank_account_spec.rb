require "bank_account"

RSpec.describe BankAccount do
    let(:account) { BankAccount.new(100)}
    describe "#deposit" do
        it "increases the balance by the deposit amount" do
            expect(account.deposit(200)).to eq(300)
        end
    end

    describe "#withdraw" do
        it "decreases the balance by the withdrawal amount if funds are available" do
            expect(account.withdraw(80)).to eq(20)
        end

        it "does not change the balance if insufficient funds" do
            expect(account.withdraw(110)).to be nil
        end
    end

    describe "#balance" do
        it "returns the current balance" do
            account.deposit(100)
            expect(account.balance).to eq(200)
        end
    end
end
