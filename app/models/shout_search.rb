class ShoutSearch
  def initialize term
    @term = term
  end

  def shouts
    Shout.where(content_type: 'TextShout', content_id: text_shouts)
    # SearchIndex
    # shout_id index
    # 1        Wombat
    # 2        foo.jpg
  end

  private
  attr_reader :term

  def text_shouts
    TextShout.where("body LIKE ?", "%#{term}%")
  end
end
