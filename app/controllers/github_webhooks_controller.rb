  # app/controllers/github_webhooks_controller.rb
  class GithubWebhooksController < ActionController::Base
    include GithubWebhook::Processor

    def push(payload)
      # TODO: handle push webhook
      puts '*****************************************************', payload.inspect
    end

    def webhook_secret(payload)
      ENV['GITHUB_WEBHOOK_SECRET']
    end
  end
