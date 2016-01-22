  # app/controllers/github_webhooks_controller.rb
  class GithubWebhooksController < ActionController::Base
    include GithubWebhook::Processor

    def push(payload)
      # TODO: handle push webhook
      puts '************************************************push payload****************', payload.inspect
      puts '**************************************************************************((**************************push resquest****************', request.inspect
    end

    def commit_comment(payload)
      puts '***************************************CommitComment payload***************', payload.inspect
      puts '******************************Final*************CommitComment request***************', request.inspect
    end

    def webhook_secret(payload)
      ENV['GITHUB_WEBHOOK_SECRET']
    end
  end
