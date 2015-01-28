# module include and extend
# http://consy.blog.51cto.com/2212530/399959/
# act_as_list gem

module M
  self.included(recipient)
    recipient.extend(ModuleClassMethods)
    recipient.class_eval do
      include ModuleInstanceMethods
    end
  end
  module ModuleClassMethods
    #定义类方法
  end
  module ModuleInstanceMethods
    #定义实例方法
  end
end
