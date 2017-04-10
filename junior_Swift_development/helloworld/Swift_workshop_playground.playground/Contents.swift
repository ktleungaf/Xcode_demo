//: Playground - noun: a place where people can play

import UIKit

var str = "Hello World"

var hello = "lol"

/*constant*/
let myConstant = "this is a constant"
let money : Int = 3000

/*flexible variable*/
var myVariable = "modify me"        //type inference feature of Swift
var degree : Double = 10.6          // specify the type

//Swift is a quite strong type language compared to JavaScript which is a weak type language

var latitude : Double
latitude = 36.777

var age : Int = 40

print("Hello swift workshop. I am at \(age)." + myConstant)

//Unique type in Swift: Triples
//Group of values

//Methods and Functions

func sayHello(n NAME : String, _ position : String, _ age : Int = 22) -> (String, String, Bool){    //return a triple
    //"for" indicates an external parameter, which must be stated when calling the function
    // the underscore "_" means that parameter is not cared
    print("This is a function, \(NAME), \(age), \(position)")
    return (NAME, position, age == 22)
}

if (age != 22){
    var temp = sayHello(n: "lol", "HK")
    print("OMG " + "it is lol!")
}
else{
    print("lol " + "it is OMG!")
}


func isInputGasSuccess(carType c : String, gasPrice : Int = 500) -> (Bool, String){
    print("\(c) has inputted $\(gasPrice) gas!")
    return (true, c) //0 is the index  , 1
}

let o = isInputGasSuccess(carType: "BMW", gasPrice: 500)
print("\(o.1) input gas status = \(o.0)")


//property observer
/*
var currentPathHistory : PathHistory ? = nil {      //nil refers to null in other programming languages like C++ and C#


}
*/

//Optionals
//Swift helps developers to improve the code reliability by forcing the developer to declare "clearly" while developing
//there may be null pointer exceoptions when parsing objects with no value
//This can be resolved by Optionals
enum Optional<String>{ //
    //Optionals
    //case none
    //case something

}//An enumeration defines a common type for a group of related values (may consists of different types of values!)

enum Drink{
case water
case softDrink
case Int
case Double
}


//properties in a class are variables declared inside the class
class Car{
    let name1 : String = "Swift"
    let name2 : String? = "Swift"
    let title1 : String? = nil
   // let title2 : String = nil => This is an error!
    
    var myScore : Int?
    var haha : String?
    var AGAIN : String?
    func getTodaysDinner() -> String? {
        print("status = \(name2)")
        return  nil
    }
}
//"?" provides options to have no value; but "!" forces only one option and disallow nil value, otherwise the application crashes
//Optionals are very important since too many Apple's APIs may return optionals
//good practice is try not to misuse "!"

//Struct is a complex type which serves for building up a model
struct Person{

}

//Differences between a class and a struct
/*
Struct (and enum) is value type (passed by value, copied when assigned to another variable)
whereas a class is reference type (passed by reference or passed by pointer)
Array and dictionaries are struct which are value types, but arrays are reference types in Java
*/

//Question: how to choose between a class and a struct

//Array
let anArray = [String]()

var arrayListing = Array<Person>()

let animals = ["Lion", "Bear", "Giraffe"]

for animal in animals{
    print(animal)
}

//Dictionary
var omgomg = [1 : "haha", 2 : "hahaha", 3 : "ahahahah", 4 : "nil"]

for (KEYs, values) in omgomg{
    print ("\(KEYs) stands for \(values)")
}
