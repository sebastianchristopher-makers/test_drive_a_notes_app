require 'notes'

describe Notes do
  let(:gettysburg_text) { "Fourscore and seven years ago our fathers brought forth, on this continent, a new nation, conceived in liberty, and dedicated to the proposition that all men are created equal. Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived, and so dedicated, can long endure. We are met on a great battle-field of that war." }
  let(:lorem_text) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." }

  context 'method #add' do
    it 'responds to method #add with two arguments passed' do
      expect(subject).to respond_to(:add).with(2).arguments
    end
  end

  context 'method #titles' do
    it 'responds to a method #titles' do
      expect(subject).to respond_to(:titles)
    end
    it 'uses #titles to return added titles' do
      subject.add("Gettysburg", gettysburg_text)
      subject.add("Lorem Ipsum", lorem_text)
      expect(subject.titles).to eq(["Gettysburg", "Lorem Ipsum"])
    end
  end

  context 'method #view' do
    it 'responds to a method #view when passed 1 arg' do
      expect(subject).to respond_to(:view).with(1).arguments
    end
    it 'uses #view to return a note when passed a title as an arg' do
      subject.add("Lorem Ipsum", lorem_text)
      expect(subject.view("Lorem Ipsum")).to eq({
        "Lorem Ipsum" => lorem_text
        })
    end
  end
end
