class GithubGettersController < ApplicationController

  def index
    @gitget = GithubGetter.new
    @my_repos = @gitget.my_repositories
    @my_loc = @gitget.my_location

    if params[:username].present?
      @user_lookup = @gitget.look_up_user(params[:username])
    end

    if params[:user_repo].present?
      @repo_lookup = @gitget.look_up_repos(params[:user_repo])
    end
  end

end
