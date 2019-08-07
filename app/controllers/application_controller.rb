class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception  # このコードがあると、Railsで生成される全てのフォームとAjaxセキュリティトークンが自動的に含まれる


    def hello
      render html: 'Hello world'  # render html でhtmlを返すようにしている
    end

end
