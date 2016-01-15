class GithubIntegrationSettingsController < ApplicationController
  def test
    # gh = Ghee.basic_auth("muhammad-ateek", "ateeq4ateeq")
   # puts '***********************REPOSS', gh.user.repos[0]["name"]
    gh = Github.new basic_auth: 'muhammad-ateek:ateeq4ateeq'
   # p#uts  Github.repos.hooks user: 'muhammad-ateek'

    # github = Github.new
      gh.repos.hooks.create 'muhammad-ateek', 'webhooks',
        name:  "web",
        active: true,
        config: {
          url: "http://something.com/webhook",
          secret: "xyz"
        }
####################################################

    # repos = Github::Client::Repos.new
    # repos.hooks user: 'muhammad-ateek', repo: 'webhook' do |branch|
    #   puts branch.name
    # end
  end
end
