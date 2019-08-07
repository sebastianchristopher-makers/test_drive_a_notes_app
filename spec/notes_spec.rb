require 'notes'

describe Notes do
  context 'method #add' do
    it 'responds to method #add' do
      expect(subject).to respond_to(:add)
    end
    it 'responds to method #add with two arguments passed' do
      expect(subject).to respond_to(:add).with(2).arguments
    end
  end
  context '#method titles' do
    it 'responds to a method #titles' do
      expect(subject).to respond_to(:titles)
    end
    it 'uses #titles to return added titles' do
      subject.add("Gettysburg","Fourscore and seven years ago our fathers brought forth, on this continent, a new nation, conceived in liberty, and dedicated to the proposition that all men are created equal. Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived, and so dedicated, can long endure. We are met on a great battle-field of that war.")
      subject.add("Lorem Ipsum","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
      expect(subject.titles).to eq(["Gettysburg", "Lorem Ipsum"])
    end
  end
end
