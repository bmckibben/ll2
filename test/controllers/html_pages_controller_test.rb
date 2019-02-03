require 'test_helper'

class HtmlPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @html_page = html_pages(:one)
  end

  test "should get index" do
    get html_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_html_page_url
    assert_response :success
  end

  test "should create html_page" do
    assert_difference('HtmlPage.count') do
      post html_pages_url, params: { html_page: { active: @html_page.active, content: @html_page.content, slug: @html_page.slug, title: @html_page.title } }
    end

    assert_redirected_to html_page_url(HtmlPage.last)
  end

  test "should show html_page" do
    get html_page_url(@html_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_html_page_url(@html_page)
    assert_response :success
  end

  test "should update html_page" do
    patch html_page_url(@html_page), params: { html_page: { active: @html_page.active, content: @html_page.content, slug: @html_page.slug, title: @html_page.title } }
    assert_redirected_to html_page_url(@html_page)
  end

  test "should destroy html_page" do
    assert_difference('HtmlPage.count', -1) do
      delete html_page_url(@html_page)
    end

    assert_redirected_to html_pages_url
  end
end
