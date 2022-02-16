require 'pry'
require 'monkey_patching'
require 'core_extensions/monkey_patching/basic'

RSpec.describe MonkeyPatching do
  context 'no monkey patching' do
    it 'should return "world"' do
      expect(subject.hello).to eq('world')
    end

    it 'should return our gasp when we yell' do
      expect(subject.yell).to eq('gaaah!')
    end

    it 'should return "extended" when we call to extend' do
      expect(subject.extend).to eq('extended')
    end
  end

  context 'with monkey patching' do
    before do
      MonkeyPatching.prepend CoreExtensions::MonkeyPatching::Basic
    end

    it 'should return "people"' do
      # binding.pry
      expect(subject.hello).to eq('people')
    end

    it 'should return our gasp when we yell' do
      expect(subject.yell).to eq('gaaah!')
    end

    it 'should return "I am extended" when we call to extend' do
      expect(subject.extend).to eq('I am extended')
    end
  end
end
