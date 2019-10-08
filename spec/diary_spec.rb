require 'rspec'
require 'diary'

describe Diary do
  describe '#add' do
    it 'user can add a new entry to the diary' do
      diary = Diary.new
      title = 'Test Title'
      entry = 'This is a test diary entry'
      expect { diary.add(title, entry) } .not_to raise_error 
    end
  end
end