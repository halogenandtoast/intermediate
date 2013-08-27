module ShoutsHelper
  def shout_form_for(content_type, &block)
    form_for(Shout.new) do |form|
      hidden_field_tag(:content_type, "#{content_type}Shout") +
        form.fields_for(:content, &block) +
        form.submit("Shout!")
    end
  end
end
