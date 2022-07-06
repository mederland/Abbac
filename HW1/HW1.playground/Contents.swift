//1. 2Sum problem.
import UIKit
import Foundation
var arr = [1,2,3,4,5]
var sum = 5
var halfsum = (sum-1)/2
func lessArr (key:Int) -> Bool{
    return key <= halfsum}
let Arr2 = arr.filter(lessArr)
print("Number of pairs is: - " , (Arr2.count),"\n\n")


//2: Closure Assignment
let ArrDic = [1,5,2]
let dic = Dictionary(ArrDic.map { ($0, $0*2) }) { i, _ in i }
print (ArrDic,"\n",dic)

//What is the difference between var and let?
// - var is variable - let is constanta
//What is an optional?
// Optional is unknown variable or constanta it can be nill also...
//What is optional chaining vs optional binding?
// Binding means giving value to variable, chaining means chain of unknown structures.
//What are the different ways to unwrap an optional? How do they work? Are they safe?
//Using an if else block. -safe
//Using Forced unwrapping. - Is NOT safe
//Using Optional binding. - safe
//Using Optional chaining. -safe
//Using a nil coalescing operator.- safe

//What is a closure?
// Closure is function without implementing name on it
//What is the difference between a class and a struct?
//Structs are value types classes are reference types
//What is the syntax '??' do?
//Return first none nil value of the two swift variables.
//What is a tuple?
//Is a group of different values.
//What is Any vs AnyObject?
//Any can represent an instance of any type at all, including function types. AnyObject can represent an instance of any class type
//What is a protocol?
//A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
