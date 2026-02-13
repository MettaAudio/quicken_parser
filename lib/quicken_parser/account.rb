module QuickenParser
  class Account
    attr_accessor :number, :type, :currency, :bank_id, :transactions, :balance

    def initialize(args={})
      args.each do |key, value|
        send("#{key}=", value)
      end
      @transactions = Transactions.new
    end

    def to_s
      "#{bank_id}:#{number}"
    end
  end
end
