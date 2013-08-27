class ShoutForm
  include ActiveModel::Model
  validate :content_valid
  attr_accessor :content_type, :content, :scope

  def initialize attributes = {}
    attributes.each do |key, value|
      public_send("#{key}=".to_sym, value)
    end
  end

  def persisted?
    false
  end

  def self.model_name
    ActiveModel::Name.new(self, nil, "Shout")
  end

  def submit
    if valid?
      scope.create(content: shout_content)
    end
  end

  private

  def shout_content
    @shout_content ||= build_content
  end

  def content_valid
    unless shout_content.valid?
      shout_content.errors.full_messages.each do |error|
        errors.add(:base, error)
      end
    end
  end

  def build_content
    content_class.new(content)
  end

  def content_class
    content_type.constantize
  end
end
