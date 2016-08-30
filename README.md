# FactoryMethodExample
an example code for method of factory method and simple factory which use Objective-C 
assume there are some control which be create by a key, "type". And you don't the concrete class before runtime. So you should create it dynamicily by configuration which get from server. instead of, I use static configuration in this project.
more detail please go my blog.

假设客户端的配置应该由后台配置,我们通过这个配置来生成对应的表单.每一个表单的控件类型都由一个唯一标识符type控制.让type决定创建对应的控件对象.在这个项目中,我会使用静态配置来展示简单工厂模式和工厂方法模式.
更详细的内容请移步到我的博客.

