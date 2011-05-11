require 'liquid'

module HtmlDateAttribute

  def html_date(date)
    formatted_date = date.strftime '%Y-%m-%dT%I:%M:%S%z'
    formatted_date.gsub!(/([-+]\d\d)(\d\d)/, '\1:\2')
    return formatted_date
  end

end

Liquid::Template.register_filter(HtmlDateAttribute)
