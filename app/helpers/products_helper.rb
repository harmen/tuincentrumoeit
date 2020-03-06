require 'rqrcode'

module ProductsHelper

  def generate_qr_code(product)
    if Rails.env.development?
      qrcode = RQRCode::QRCode.new("localhost:3000/products/#{product.id}")
    else
      qrcode = RQRCode::QRCode.new("https://tuincentrum-oeit.herokuapp.com/products/#{product.id}")
    end

    svg = qrcode.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 6,
      standalone: true
    ).html_safe

    return svg
  end

end