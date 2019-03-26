require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @any_naixement = "2019-03-29"
    @nom = "test"
    @raza = "test r"
    @user_id = 2
    @zone_id = 2
    @user = User.create!(email: 'testsadasd@gmail.com', password: '123456', password_confirmation: '123456')
    # @animal = Animal.create!(any_naixement: @any_naixement, nom: @nom, raza: @raza, user_id: @user_id, zone_id: @zone_id);
    @animal = animals(:one)
  end

  test "should get index" do
    get animals_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_url
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post animals_url, params: { animal: { any_naixement: @any_naixement, nom: @nom, raza: @raza, user_id: @user_id, zone_id: @zone_id } }, xhr: true
    end

    # assert_redirected_to animal_url(Animal.last)
    assert_response :success

  end

  test "should show animal" do
    get animal_url(@animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_url(@animal)
    assert_response :success
  end

  test "should update animal" do
    patch animal_url(@animal), params: { animal: { any_naixement: @any_naixement, nom: @nom, raza: @raza, user_id: @user_id, zone_id: @zone_id } }, xhr: true
    # assert_redirected_to animal_url(@animal)
    assert_response :success
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete animal_url(@animal), xhr: true
    end
    assert_response :success
    # assert_redirected_to animals_url
  end
end
