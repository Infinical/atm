class Person

    attr_accessor :name
    attr_accessor :cash
    attr_accessor :account

    def initialize(attrs = {})
        @name = set_name(attrs[:name])
        @cash = 0
        @account = nil
    end
    def create_account
        @account = Account.new(owner:self)
    end
    def deposit(amount)
        @account = Account.new(owner:self)
    end

    private
    def set_name(obj)
        obj == nil ? missing_name : @owner =obj
    end
    def missing_name
        raise "A name is required"
    end
end