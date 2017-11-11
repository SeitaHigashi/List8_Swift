//
//  main.swift
//  List8
//
//  Created by 東誠太 on 2017/11/10.
//  Copyright © 2017年 東誠太. All rights reserved.
//

//import Foundation
//import Cocoa

class PhoneBook{
    private var data : [String:String] = [String:String]()
    func add_data(){
        print("New Name:")
        let inname :String? = readLine()
        print("Number")
        let innumber :String? = readLine()
        if inname != nil {
            data[inname!] = innumber == nil ? "NoNumber" : innumber
        }
    }
    func list_data(){
        for (name,_) in data{
            print("name:\(name)")
        }
    }
    func delete_data(){
        print("Delete_data name:")
        let inname :String? = readLine()
        if inname != nil {
            data.removeValue(forKey: inname!)
        }
    }
    func print_data(){
        print("Name")
        let name:String? = readLine()
        if data[name!] != nil {
            print("Number is \(data[name!] ?? "")")
        } else {
            print("\(name! ?? "") is notfound")
        }
    }
}


var data :PhoneBook = PhoneBook()
var select:String?
repeat {
    select = readLine()
    switch select {
    case "1"?:data.add_data()
    case "2"?:data.print_data()
    case "3"?:data.list_data()
    case "4"?:data.delete_data()
    default : break
    }
} while select != "5"
