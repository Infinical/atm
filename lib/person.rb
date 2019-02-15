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
    @account = Account.new(owner: self)
  end

  def deposit(amount)
    if @account
      deposit_amount(amount)
    else
      missing_account
    end
  end
  def withdraw()
  end

  private

  def set_name(obj)
    obj.nil? ? missing_name : @owner = obj
  end

  def deposit_amount(amount)
    @cash -= amount
    account.balance += amount
  end

  def missing_name
    raise 'A name is required'
  end

  def missing_account
    raise 'No account present'
  end
end
