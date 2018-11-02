require 'test_helper'

class KitchenStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kitchen_staff = kitchen_staffs(:one)
  end

  test "should get index" do
    get kitchen_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_kitchen_staff_url
    assert_response :success
  end

  test "should create kitchen_staff" do
    assert_difference('KitchenStaff.count') do
      post kitchen_staffs_url, params: { kitchen_staff: { chef_name: @kitchen_staff.chef_name } }
    end

    assert_redirected_to kitchen_staff_url(KitchenStaff.last)
  end

  test "should show kitchen_staff" do
    get kitchen_staff_url(@kitchen_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_kitchen_staff_url(@kitchen_staff)
    assert_response :success
  end

  test "should update kitchen_staff" do
    patch kitchen_staff_url(@kitchen_staff), params: { kitchen_staff: { chef_name: @kitchen_staff.chef_name } }
    assert_redirected_to kitchen_staff_url(@kitchen_staff)
  end

  test "should destroy kitchen_staff" do
    assert_difference('KitchenStaff.count', -1) do
      delete kitchen_staff_url(@kitchen_staff)
    end

    assert_redirected_to kitchen_staffs_url
  end
end
