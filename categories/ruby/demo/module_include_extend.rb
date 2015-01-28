# module include and extend

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
