class ShoutFactory
  def initialize content_type, scope
    @content_type = content_type
    @scope = scope
  end

  def build params
    content = build_content(params)
    scope.new(content: content)
  end

  private

  attr_reader :content_type, :scope

  def build_content params
    if params
      content_class.new(content_params(params[:content]))
    else
      content_class.new
    end
  end

  def content_class
    content_type.constantize
  end

  def content_params params
    case content_type
    when 'TextShout' then params.permit(:body)
    when 'PhotoShout' then params.permit(:image)
    end
  end
end
