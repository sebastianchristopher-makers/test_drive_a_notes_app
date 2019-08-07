class Notes
  def initialize
    @notes = Hash.new
  end

  def add(title, body)
    @notes[title] = body
  end

  def titles
    @notes.keys
  end

  def view(title)
    @notes.select { |k, v| k == title }
  end
end
