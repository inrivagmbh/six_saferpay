require 'spec_helper'

RSpec.describe SixSaferpay::SixSecureData::Delete do

  subject { SpinningWheel.create('six_secure_data_delete') }

  let(:url) { '/Payment/v1/Alias/Delete' }
  let(:response_class) { SixSaferpay::SixSecureData::DeleteResponse }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      alias_id: subject.alias_id
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure data delete' do
      expect(subject.to_hash).to eq(hash)
    end
  end

  describe 'to_json' do
    it { expect(subject.to_json).to eq(hash.to_json) }
  end

  describe 'url' do
    it { expect(subject.url).to eq(url) }
  end

  describe 'response_class' do
    it { expect(subject.response_class).to eq(response_class) }
  end
end
