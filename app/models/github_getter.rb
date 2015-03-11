class GithubGetter
  attr_reader :client

  def initialize
    @client = Octokit::Client.new(:access_token => Rails.application.secrets.github_access_token)
  end

  def my_repositories
    @client.repositories
  end

  def my_location
    @client.user.location
  end

  def look_up_user(username)
    @client.user(username)
  end

  def look_up_repos(user_repo)
    @client.repositories(user_repo)
  end


end
