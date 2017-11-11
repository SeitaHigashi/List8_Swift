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
    func print_data(){
        for (name,number) in data{
            print("name:\(name)")
            print("number:\(number)")
        }
    }
    func delete_data(){
        print("Delete_data name:")
        let inname :String? = readLine()
        if inname != nil {
            data.removeValue(forKey: inname!)
        }
    }
    func seach_data(){
        
    }
}
var data :PhoneBook = PhoneBook()
switch readLine() {
case "1"?:data.add_data()
case "2"?:data.print_data()
case "3"?:data.seach_data()
default : break
}
