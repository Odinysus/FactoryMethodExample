# FactoryMethodExample
an example code for method of factory method and simple factory which use Objective-C   
assume there are some control which be create by a key, "type". And you don't the concrete class before runtime. So you should create it dynamicily by configuration which get from server. instead of, I use static configuration in this  project.There are two way to implement simple factory method.  
1.parameters method. an class method which parameter  modify the control's type. your logic operation be write in this method.

       @interface AKFactory : NSObject
    	- (AKBasicControl *)controlWithType:(NSString *)type;
    	@end

2.class method. It like the one but you should remove you implement the login int client

    	@interface AKFactory : NSObject
    	- (AKBasicControl *)TextField;
    	- (AKBasicControl *)Button;
    	@end

modify the Marco  SIMPLE_FACTORY_WAY 1 to first way and 2 to second way.  

### Add requirement
once your PM ask you to add an new control in the this form. You can modify your creator method in simple factory. But it is not cool and not advise. You should refactoring your code to factory method which is follow the [Open/closed principle](https://en.wikipedia.org/wiki/Open/closed_principle).  
more detail please go to my [blog](http://www.jianshu.com/p/b811774ffef1).

假设客户端的配置应该由后台配置,我们通过这个配置来生成对应的表单.每一个表单的控件类型都由一个唯一标识符type控制.让type决定创建对应的控件对象.在这个项目中,我会使用静态配置来展示简单工厂模式和工厂方法模式.
简单工厂有两种方法实现:  
1.参数化方法. 即在工厂类里面写一个带type类型的生产方法,在这个方法中写判断逻辑.

   	@interface AKFactory : NSObject
   	- (AKBasicControl *)controlWithType:(NSString *)type;
   	@end

2.为每一个产品类写一个生产方法.这种方法将原本的判断逻辑延迟到了客户端实现.

     @interface AKFactory : NSObject
     - (AKBasicControl *)TextField;
     - (AKBasicControl *)Button;
     @end

修改宏SIMPLE_FACTORY_WAY为1,使用第一种方法. 2使用第二种方法

### 新的需求
如果你的PM跟你提新的需求,说要在表单中添加一个新的控件.当然你可以修改之前简单工厂中的类生成方法.你应该重构你的代码,并将它改为工厂方法模式.因为只有这个模式才是符合开闭原则([Open/closed principle](https://en.wikipedia.org/wiki/Open/closed_principle))  
更详细的内容请移步到我的[博客](http://www.jianshu.com/p/b811774ffef1).
