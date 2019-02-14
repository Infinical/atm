class Account
STANDARD_VALIDITY_YRS=2

    attr_accessor   :funds
    attr_accessor   :owner   
    attr_accessor   :pin_code
    attr_accessor   :balance
    attr_accessor   :account_status
    attr_accessor   :exp_date


    def initialize(attrs = {})
        @funds = 1000
        set_owner(attrs[:owner])
        @pin_code = rand(1000..9999)
        @balance = 0
        @account_status = :active
        @exp_date = set_expire_date
    end  
    
    private

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end
    def self.deactivate(account)
        account.account_status = :deactivated
    end
    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end
    def missing_owner
        raise "An Account owner is required"
    end
end