SpinningWheel.define do
  fabric name: 'six_secure_data_insert_direct_response', class_name: 'SixSaferpay::SixSecureData::InsertDirectResponse' do
    response_header { SpinningWheel.create('response_header') }
    fd_alias { SpinningWheel.create('alias') }
    payment_means { SpinningWheel.create('response_payment_means') }
    check_result { SpinningWheel.create('check_result') }
  end
end
