# frozen_string_literal: true

RSpec.describe Administrate::Field::SimpleMDEMarkdown do
  let(:page) { :show }
  let(:data) do
    ''"
Hello!
    "''
  end
  subject { described_class.new(:markdown, data, page) }

  describe '#to_s' do
    it 'parses markdown' do
      expect(subject.to_s).to match /<p>Hello!<\/p>/
    end
  end
  
  describe '#simplemde_options' do
    subject { described_class.with_options({simplemde: { foo: 'bar' }}).new(:markdown, data, page) }
    
    it 'gets the options' do
      expect(subject.simplemde_options).to eq({ foo: 'bar' })
    end
  end
end
