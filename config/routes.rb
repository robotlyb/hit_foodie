HitFoodie::Application.routes.draw do

  #post "/weixin" => "weixin/home#welcome"

  scope :path => "/weixin", :via => :post, :defaults => {:format => 'xml'} do
    # 欢迎消息
    root :to => 'weixin/home#welcome', :constraints => Weixin::Router.new(:type => "text", :content => "Hello2BizUser")

    # 回复图文消息
    root :to => 'weixin/store#show', :constraints => Weixin::Router.new(:type => "text", :content => /^@/)

  end

  # 初次返回验证字符串
  get "/weixin" => "weixin/home#show"
end
