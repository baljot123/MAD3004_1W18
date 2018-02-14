//
//  static variable.swift
//  14th feb
//
//  Created by MacStudent on 2018-02-14.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Employee{
    let MIN_PAY = 11.60
    var a : String
    
    static  var noOfobject = 0
    init() {
        Employee.noOfobject += 1
    }
    
    static func getNoOfobject() -> Int
    {
        //a = "test" //NOT ALLOWD
        return noOfobject
    }
    
    func greet(name: String)
    {
        print("Employee :: Want to join the team? \(name)")
        }
    
    deinit {
        print("EMployee Deinit")
    }
}

var e1 = Employee()
print(Employee.getNoOfobject())
e1.greet(name: "Sonal")
var e2 = Employee()
print(Employee.getNoOfobject())



class parttime : Employee
{
    override func greet(name: String) {
        print("part time :: want to work full time? \(name)")
        
    }
    deinit {
        print("parttime deinit")
    }
    
    var p1 = parttime()
    p1.greet(name: "p1")
    //p1.getNoofobject(); // ERROR
    
    e1 = p1

    e1.greet(name: "NAME")
    
    var r1 : Employee
    r1 : Employee()
    r1.greet(name: "Employee")
    
    
    r1 = parttime()
    r1.greet(name: "parttime")
    
    
    //
    
}
