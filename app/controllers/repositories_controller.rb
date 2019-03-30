class RepositoriesController < ApplicationController
  def index
    github_service = GithubService.new
    @repos_array = github_service.get_repos()
  end

  def create
    github_service = GithubService.new
    github_service.create_repo(name: params[:name])
    redirect_to '/'
  end
end
