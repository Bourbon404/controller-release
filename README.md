# controller-release
controller-release

这里介绍了三种controller的释放问题

1.利用navigation去进行push，pop 操作，子controller是临时变量的时候，子controller是能够进行正常的释放的

2.利用addsubview的方式将controller的内容添加到父controller的时候，
  需要先进行addchildcontroller，将子视图加载进来才行，这样zicontroller能够进行正常的生命周期。
  此时controller是临时变量的话，还是能够正常释放。
  
3.将子controller设置成父controller的属性，或者局部变量的时候，此时不管用上述两种方式的哪种，都不会释放。
  问题在进行push，pop操作或者remove操作的时候，这个变量可能还会在父controller的其他地方引用，
  所以该controller不释放，想要释放就在结束使用后将子controller设置为nil
  
//坑爹的问题，直到别人提醒我才理解这个问题。
欢迎访问我的网站:www.bourbonz.cn
