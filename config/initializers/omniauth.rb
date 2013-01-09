#!/usr/bin/env ruby
#-*- coding: utf-8 -*-
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Setting.app_id, Setting.app_secret
end
