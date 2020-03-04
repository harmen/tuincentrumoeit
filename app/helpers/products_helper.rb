require 'rqrcode'
module ProductsHelper

  def generate_qr_code
    qrcode = RQRCode::QRCode.new("https://bakkerijfuite.nl")

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