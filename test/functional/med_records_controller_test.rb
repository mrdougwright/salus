require 'test_helper'

class MedRecordsControllerTest < ActionController::TestCase
  setup do
    @med_record = med_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:med_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create med_record" do
    assert_difference('MedRecord.count') do
      post :create, med_record: {  }
    end

    assert_redirected_to med_record_path(assigns(:med_record))
  end

  test "should show med_record" do
    get :show, id: @med_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @med_record
    assert_response :success
  end

  test "should update med_record" do
    put :update, id: @med_record, med_record: {  }
    assert_redirected_to med_record_path(assigns(:med_record))
  end

  test "should destroy med_record" do
    assert_difference('MedRecord.count', -1) do
      delete :destroy, id: @med_record
    end

    assert_redirected_to med_records_path
  end
end
