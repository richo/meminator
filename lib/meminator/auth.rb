module Meminator
  extend self

  @@username = nil
  @@password = nil

  def username
    if @@username
      @@username
    else
      raise NotAuthorized
    end
  end

  def password
    if @@password
      @@password
    else
      raise NotAuthorized
    end
  end

  def username=(uname)
    @@username = uname
  end

  def password=(pword)
    @@password = pword
  end
end

module Meminator
  class NotAuthorized < Exception; end
end
