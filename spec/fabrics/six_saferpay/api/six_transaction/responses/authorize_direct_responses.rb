SpinningWheel.define do
  fabric name: 'six_transaction_authorize_direct_response', class_name: 'SixSaferpay::SixTransaction::AuthorizeDirectResponse' do
    response_header { SpinningWheel.create('response_header') }
    transaction { SpinningWheel.create('transaction') }
    payment_means { SpinningWheel.create('response_payment_means') }
    payer { SpinningWheel.create('payer') }
    registration_result { SpinningWheel.create('registration_result') }
  end
end
