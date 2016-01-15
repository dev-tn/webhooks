  # app/controllers/github_webhooks_controller.rb
  class GithubWebhooksController < ActionController::Base
    include GithubWebhook::Processor

    def push(payload)
      # TODO: handle push webhook
      puts '*****************************************************', payload.inspect
    end

    def webhook_secret(payload)
      ENV['3c4190c02ae78bae5f41178f9437a1e778829b1a']
    end
  end
