module ApplicationHelper

  def build_image_path(image)
    if image.attached? 
      "<img class='card-img-top' src=#{url_for(image)} alt='Card image cap'>".html_safe
    else
      "<img class='card-img-top' src='/eBusiness/img/portfolio/1.jpg' alt='Card image cap'>".html_safe
    end 
  end

  def slider_image_path(img_record)
    if img_record.present? && img_record&.image.attached?
      return url_for(img_record&.image)
    else
      return asset_path('Warehousing.jpg')
    end
  end

  def active_class(link_path)
    current_page?(link_path) ? "active btn-primary-design-color" : ""
  end

  def footer_fade_in_h
    return '' if check_controler
    'footer-area-fade-in'
  end

  def footer_nested_box_fade_in
    return '' if check_controler
    'cate-fade-in-div-box'
  end

  def check_controler
    params["controller"] == "products" && params["category_id"] || params["controller"] == "categories"
  end
end