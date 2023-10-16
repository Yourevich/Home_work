import UIKit

//MARK: - Type casting

//MARK: Upcasting. Приведение к базовуму классу

class SnowRider {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
}

class SnowStyle: SnowRider {
    
    var style: String
    
    init(name: String, style: String) {
        self.style = style
        super.init(name: name)
    }
}

let proRider = SnowStyle(name: "Jonh", style: "Freestyle")
let juniorRider: SnowRider = proRider
print(juniorRider.name)


//Создали инстанс подкласса и далее сохранили его в константу juniorRider, которая в свою очередь типа суперкласса. Теперь мы можем использовать его как объект класса SnowRider. Не до конца понял какие практические плюсы из этого вытекают


//MARK: DownCasting. Приведение к подклассу

if let juniorRiderStyle = juniorRider as? SnowStyle {
    // Если downcasting прошел успешно, мы можем использовать juniorRiderStyle как объект SnowStyle
    print(juniorRiderStyle.style)
} else {
    // Если downcasting не удался (например, juniorRider не является объектом SnowStyle), этот блок не выполнится
    print("juniorRider не является объектом SnowStyle")
}

//Force Downcasting. Принудительное приведение к подклассу

// Принудительное приведение proRider к типу SnowStyle
let proRiderStyle = proRider as! SnowStyle

// Теперь мы можем использовать proRiderStyle как объект SnowStyle
print(proRiderStyle.style)


//  MARK: Проверка типа

let riders = [
    SnowStyle(name: "Jake", style: "Jibbing"),
    SnowRider(name: "Eric"),
    SnowStyle(name: "Sara", style: "Freeride"),
    SnowRider(name: "Ken")
    
]

var snowRiderCount = 0
var snowStyleCount = 0


for rider in riders {
    
    if rider is SnowStyle {
        snowStyleCount += 1
    } else if rider is SnowRider {
        snowRiderCount += 1
        
    }
}

print(snowRiderCount)
print(snowStyleCount)


//создали массив и положили туда инстансы обеих класссов, с помощью цикла прошлись по константе и подсчитали кол-во инстансов того или иного класса

