class LichGiangDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end


  def lichgiang_display
    {
      "Quá Kém": "qua_kem",
      "Kém": "kem",
      "Bình Thường": "binh_thuong",
      "Tạm Ổn": "tam_duoc",
      "Khá Tốt": "kha",
      "Tốt": "tot",
      "Rất Tốt": "qua_tot"
    }
  end

  def danhgia_style_display
    case danhgia
    when "qua_kem" then
      "<p><code>Quá Kém</code></p>
      <div class='progress active'>
        <div class='progress-bar progress-bar-primary progress-bar-striped' role='progressbar' aria-valuenow='10' aria-valuemin='0' aria-valuemax='100' style='width: 10%'>
          <span class='sr-only'>40% Complete (success)</span>
        </div>
      </div>".html_safe


    when "kem" then
      "<p><code>Kém</code></p>
      <div class='progress active' style='background-color: rgba(0, 166, 90, 0.22);'>
        <div class='progress-bar progress-bar-primary progress-bar-striped' role='progressbar' aria-valuenow='25' aria-valuemin='0' aria-valuemax='100' style='width: 25%'>
          <span class='sr-only'>40% Complete (success)</span>
        </div>
      </div>".html_safe


    when "binh_thuong" then
      "<p><code>Bình Thường</code></p>
      <div class='progress active' style='background-color: rgba(0, 166, 90, 0.22);'>
        <div class='progress-bar progress-bar-primary progress-bar-striped' role='progressbar' aria-valuenow='50' aria-valuemin='0' aria-valuemax='100' style='width: 50%'>
          <span class='sr-only'>40% Complete (success)</span>
        </div>
      </div>".html_safe


    when "tam_duoc" then
      "<p><code>Tạm Được</code></p>
      <div class='progress active'>
        <div class='progress-bar progress-bar-primary progress-bar-striped' role='progressbar' aria-valuenow='65' aria-valuemin='0' aria-valuemax='100' style='width: 65%'>
          <span class='sr-only'>40% Complete (success)</span>
        </div>
      </div>".html_safe


    when "kha" then
      "<p><code>Khá Tốt</code></p>
      <div class='progress active'>
        <div class='progress-bar progress-bar-primary progress-bar-striped' role='progressbar' aria-valuenow='75' aria-valuemin='0' aria-valuemax='100' style='width: 75%'>
          <span class='sr-only'>40% Complete (success)</span>
        </div>
      </div>".html_safe


    when "tot" then
      "<p><code>Tốt</code></p>
      <div class='progress active'>
        <div class='progress-bar progress-bar-primary progress-bar-striped' role='progressbar' aria-valuenow='90' aria-valuemin='0' aria-valuemax='100' style='width: 90%'>
          <span class='sr-only'>40% Complete (success)</span>
        </div>
      </div>".html_safe


    when "qua_tot" then
      "<p><code>Rất Tốt</code></p>
      <div class='progress active'>
        <div class='progress-bar progress-bar-primary progress-bar-striped' role='progressbar' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100' style='width: 100%'>
          <span class='sr-only'>40% Complete (success)</span>
        </div>
      </div>".html_safe


    else
      "Chưa Có Đánh Giá"
    end
  end

end
