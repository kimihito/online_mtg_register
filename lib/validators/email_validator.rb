#!/usr/bin/env ruby
#-*- coding: utf-8 -*-
class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /^([^@\s]+)@([a-z0-9]+\.)+[a-z]{2,}$/i
      object.errors[attribute] << (options[:message] || "is not formatted properly")
    end
    #    begin
    #      m = Mail::Address.new(value)
    #
    #      r = m.domain && m.address == value
    #
    #      t = m.__send__(:tree)
    #      r &&= (t.domain.dot_atom_text.elements.size > 1)
    #    rescue Exception
    #      r = false
    #    end
    #    record.errors[attribute] << (options[:message] || "is invalid") unless r
  end
end
