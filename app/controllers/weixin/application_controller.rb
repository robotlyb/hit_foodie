#coding: utf-8
class Weixin::ApplicationController < ActionController::Base
  #layout "weixin"
  skip_before_filter :verify_authenticity_token
  # 确定此post请求为微信服务器发来
  before_filter :check_weixin_legality

  private
  # 根据参数校验请求是否合法，如果非法返回错误页面
  def check_weixin_legality
    array = [Rails.configuration.weixin_token, params[:timestamp], params[:nonce]].sort
    render :text => "Forbidden", :status => 403 if params[:signature] != Digest::SHA1.hexdigest(array.join)
  end

end
