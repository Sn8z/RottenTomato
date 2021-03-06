require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post :create, match: { game_id: @match.game_id, team1: @match.team1, team1_score: @match.team1_score, team2: @match.team2, team2_score: @match.team2_score, tournament: @match.tournament, twitch: @match.twitch }
    end

    assert_redirected_to match_path(assigns(:match))
  end

  test "should show match" do
    get :show, id: @match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match
    assert_response :success
  end

  test "should update match" do
    patch :update, id: @match, match: { game_id: @match.game_id, team1: @match.team1, team1_score: @match.team1_score, team2: @match.team2, team2_score: @match.team2_score, tournament: @match.tournament, twitch: @match.twitch }
    assert_redirected_to match_path(assigns(:match))
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete :destroy, id: @match
    end

    assert_redirected_to matches_path
  end
end
