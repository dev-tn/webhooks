class GithubWebhooksController < ApplicationController
  # app/controllers/github_webhooks_controller.rb
  class GithubWebhooksController < ActionController::Base
    include GithubWebhook::Processor

    def push(payload)
      # TODO: handle push webhook
      puts '*****************************************************', payload.inspect
    end

    def webhook_secret(payload)
      ENV['a_gr34t_s3cr3t']
    end
  end
end
