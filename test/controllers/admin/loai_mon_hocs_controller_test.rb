require 'test_helper'

class Admin::LoaiMonHocsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_loai_mon_hocs_index_url
    assert_response :success
  end

end
