module SixSaferpay
  class RegistrationResult

    attr_accessor(:success,
                  :fd_alias,
                  :error
                 )


    def initialize(success:,
                   fd_alias: nil,
                   error: nil)

      @success = success
      @fd_alias = SixSaferpay::RegistrationAlias.new(fd_alias.to_h) if fd_alias
      @error = SixSaferpay::RegistrationError.new(error.to_h) if error
    end

    def to_hash
      hash = Hash.new
      hash.merge!(success: @success) if !@success.nil?
      hash.merge!(fd_alias: @fd_alias.to_h) if @fd_alias
      hash.merge!(error: @error.to_h) if @error
      hash
    end
    alias_method :to_h, :to_hash

  end
end
