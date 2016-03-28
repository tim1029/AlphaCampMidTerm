//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//輸入兩個array 
//1. 排除重複
//2. 排序 小至大

func sortArray(array1:[Int], array2:[Int]) -> [Int] {

    var myArray = array1
    
    // 1. 
    for i in 0...array2.count-1 {
        if !myArray.contains(array2[i]){
            myArray.append(array2[i])
        }
    }
    
//myArray
    
//sortin
for i in 0...myArray.count-2{
    var p = 0
    // big to small
    for p = i ;p<myArray.count; p=p+1{
//        print("iimyArray[\(i)] \(myArray[i]) -- ppmyArray[\(p)] \(myArray[p])")
        
        if myArray[i] > myArray[p] {
//            print("=================iimyArray[\(i)] \(myArray[i]) -- ppmyArray[\(p)] \(myArray[p])")
            let tmp = myArray[p]
            myArray[p]=myArray[i]
            myArray[i]=tmp
//            print(myArray)
        }
    }
}

    return myArray
}

sortArray([1,5,3,6,9,22,54,44,11], array2: [2,11,33,99,21,22,4,3])

