module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Rent Weird Realty"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def logo
    image_tag("RW_logo.png", alt: "Rent Weird Realty", class: "round", width: "125px" )
  end
end

