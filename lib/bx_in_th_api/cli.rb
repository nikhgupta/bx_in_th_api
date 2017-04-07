module BxInThAPI
  class CLI < Thor
    class_option :key
    class_option :secret

    desc "balance", "Get Balance of the authenticated account."
    def balance
      BxInThAPI::Base.new(options[:key], options[:secret]).get_balance
    end
  end
end
