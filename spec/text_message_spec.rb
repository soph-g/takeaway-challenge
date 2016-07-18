require 'text_message'

describe TextMessage do

  subject(:message) { described_class.new }
  let(:confirmation) { double (:confirmation)}

  it {is_expected.to(respond_to(:send_message))}

end
