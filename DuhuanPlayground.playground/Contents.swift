//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
protocol Food {
    func getFood()
}

class KFC:Food{
    func getFood() {
        debugPrint("KFC")
    }
}
class Huangmengji: Food {
    func getFood() {
        debugPrint("黄焖鸡")
    }
}

class FoodFactory{
    class func createFood(type:String) -> Food{
        if type == "huang"{
            return Huangmengji()
        }else if type == "KFC"{
            return KFC()

        }
        return KFC()
    }
}

let food = FoodFactory.createFood("KFC")
food.getFood()
