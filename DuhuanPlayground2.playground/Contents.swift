//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//工厂方法模式针对的是一个产品等级结构；而抽象工厂模式则是针对的多个产品等级结构。在编程中，通常一个产品结构，表现为一个接口或者抽象类，也就是说，工厂方法模式提供的所有产品都是衍生自同一个接口或抽象类，而抽象工厂模式所提供的产品则是衍生自不同的接口或抽象类。

//工厂方法模式和抽象工厂模式的区别，如果工厂的产品全部属于同一个等级结构，则属于工厂方法模式；如果工厂的产品来自多个等级结构，则属于抽象工厂模式。


///抽象工厂模式。
protocol IProduct1 {
    func show()
}

protocol IProduct2 {
    func show()
}
class Product1:IProduct1{

    func show() {
        debugPrint("产品1")
    }

}
class Product2:IProduct2{
    func show() {
        debugPrint("产品2")
    }
}

protocol IFactory {
    func cresteProduct1() -> Product1
    func createProduct2() -> Product2
}
class Factory: IFactory {
    
    func cresteProduct1() -> Product1 {
        return Product1()
    }
    func createProduct2() -> Product2 {
        return Product2()
    }
}
let factory = Factory()
factory.cresteProduct1().show()
factory.createProduct2().show()

