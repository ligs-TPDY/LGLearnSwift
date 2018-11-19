//
//  ViewController.swift
//  protectSwift
//
//  Created by carnet on 2018/10/10.
//  Copyright © 2018年 TP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ///打印
        print("Hello,world!")
        ///常量和变量
        let name:String = "小猫"
        var age:Int = 10
        age = 100
        print(name)
        print(age)
        age = 1000
        print(age)
        
        var cla,add:String
        cla = "五年级"
        add = "长白山天泉"
        print(cla)
        print(add)
        
        let test:String = "\(name)今年\(age)岁读\(cla)住在\(add)"
        print(test)
        
        let valueMin = Int.min
        let valueMax = Int.max
        print(valueMin)
        print(valueMax)
        
        let isTrue = true
        let isFalse = false
        print(isTrue)
        print(isFalse)
        
        if isTrue {
            print("成功了")
        }else{
            print("失败了")
        }
        if isFalse {
            print("失败了吧")
        }else{
            print("怎么,没有失败")
        }
        
        let i = 1
        if i != 1 {
            print(i);
        }else{
            print(i+100)
        }
        
        let http400 = (400,"Not Fount")
        print(http400.0)
        print(http400.1)
        print(http400)
        
        let (code,text) = http400
        print(code)
        print(text)
        
        let (code1,_) = http400
        print(code1)
        
        let http200 = (httpCode:200,httpText:"OK")
        print(http200.httpCode)
        print(http200.httpText)
        
        let intStr = "123"
        let int0 = Int(intStr)
        print(intStr)
        print(int0!)
        
        var httpCode2 : Int? = 404000
        if let code = httpCode2 {
            print(code)
        }
        httpCode2 = 5050000
        print(httpCode2!)
        
        if httpCode2 != nil {
            print("\(httpCode2!)最美的不是下雨天")
        }
        
        httpCode2 = nil
        print(httpCode2)
        
        if let first = Int("800") {
            if let second = Int("820"){
                if first<second && second>100{
                    print("\(first)<\(second)<1000")
                }
            }
        }
        
        if let first = Int("500"),let second = Int("520"), first<second && second>100 {
            print("\(first)<\(second)<580")
        }
        
        do {
            try canThrowAnError()
            
        }catch{
            
        }
        
        let (x,y) = (1,2)
        if x == y {
            print("你没饿米")
        }else{
            print("不想等")
        }
        
        print("hello,"+"world")
        
        print(9%4)
        print(9/4)
        
        if (1,"401") < (2,"404") {
            print("12345678")
        }
        if (2,"404") < (2,"405") {
            print("987456123")
        }
        if (2,"408") == (2,"408") {
            print("654789123");
        }
        
        let names = ["Tom","Jack","Bonane","orange"]
        let count = names.count
        for i in 0..<count {
            print(names[i])
        }
        
        for name in names[1...]{
            print(name)
        }
        
        for name in names[..<3]{
            print(name)
        }
        
        let qo = """
        fnasiufsadjhfsnf
        fmsikfsdaifnsda
        msdfsdfsdfnsdf
        """
        print(qo)
        
        let srte = ""
        let sre222 = String()
        print(srte)
        print(sre222)
        if srte.isEmpty {
            print("1234444")
        }
        if sre222.isEmpty {
            print("44444123")
        }
        
        var varStr = "hello"
        varStr += " world"
        print(varStr)
        
        for cahr in "dfsfsdafsdfdsfs" {
            print(cahr)
        }
        
        varStr.append("dddddddd")
        print(varStr)
        
        var array = [Double]()
        array.append(3)
        print(array)
        array.append(55)
        print(array)
        print(array.first!)
//        array = []
//        print(array)
        
        var array2 = Array(repeating: 0.2, count: 5)
        print(array2)
        
        var array3 = array + array2
        print(array3)
        
        var array4:[String] = ["a","b","c"]
        print(array4.last)
        
        if !array4.isEmpty {
            print("不恐怖u 恐怕难过")
        }
        array4.remove(at: 1)
        print(array4)
        
        array4.removeFirst()
        array4.removeLast()
        print(array4)
        
        for (index,values) in array3.enumerated() {
            print("index ==\(index)")
            print("values ==\(values)")
        }
        
        var dic0:[String:String] = ["1":"One","2":"Tow"]
        if !dic0.isEmpty {
            print("32wefreswfsef")
        }
        
        dic0["3"] = "Three"
        print(dic0)
        
        dic0.updateValue("three", forKey: "3")
        print(dic0)
        
        dic0.removeValue(forKey: "1")
        print(dic0)
        
        for (key,values) in dic0 {
            print(key)
            print(values)
        }
        
        for key in dic0.keys {
            print(key)
        }
        for value in dic0.values {
            print(value)
        }
        
        let char:Character = "b"
        switch char {
        case "a":
            print("a")
        case "b","c":
            print("b+c")
        case "d":
            print("d")
        default:
            print("eee")
        }
        
        let number:Int = 100
        switch number {
        case 0:
            print("0")
        case 1...12:
            print("12")
        case 13..<100:
            print("99")
        case 100..<1000:
            print("999")
        default:
            print("-10000")
        }
        
        let Point = (0,0)
        switch Point {
        case (0,0):
            print("0,0")
        case (_,0):
            print("&,0")
        case (0,_):
            print("0,&")
        case (-2...2,-2...2):
            print("2222")
        default:
            print("44444")
        }
        
        if #available(iOS 12, *) {
            print("3333")
        }else{
            print("222")
        }
        
        print(greet2(preson: "天佑"))
        
        let nameddd = greet3(preson: "三个");
        print(nameddd)
        
        let number555 = greet4(person: "1233");
        print(number555!)
        
        print(greet5(preson: "34567ffffff"))
        
        print(greet6(array: [0,1,2,3,4,5,6,7,8,9]))
        
        print(grert7(par: "隔壁泰山"))
        
        print(greet8(par: "100",par2:5000000))
        
        enum points{
            case north
            case south
            case east
            case weat
        }
        
        enum points2{
            case north,south,east,weat
        }
        
        let point = points2.north
        let point2 = points2.south
        let point3 = points2.east
        let point4 = points2.weat
        
        switch point3 {
        case points2.east:
            print("east")
        case points2.weat:
            print("weat")
        case points2.south:
            print("south")
        case points2.north:
            print("north")
        }
        
        print(points.east)
        print(points2.weat)
        
        
        let personooo = Person.in(name: "小猫", age: 20, add: "火星", cal:"五年级", XingB: "难", sort: 100)
        print(personooo.name)
        print(personooo.age)
        print(personooo.add)
        
        personooo.name = "小狗"
        personooo.age = 2000
        personooo.add = "死刑"
        personooo.cal = "五年级"
        personooo.XingB = "nv"
        personooo.sort = 3000
        print(personooo)
        
        let prsonooo = personooo
        if personooo === prsonooo {
            print("相同内存地址")
        }
        
        
        
        
        
        let button:UIButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 100))
        self.view.addSubview(button);
        button.backgroundColor = UIColor.init(red: 0, green: 0, blue: 1, alpha: 1.0);
        button.setTitle("按钮", for: UIControlState.init(rawValue: 0));
        
    }
    
    func canThrowAnError() throws {
        print("错误")
    }
    
    func greet(person:[String:String]) {
        guard let name = person["name"] else {
            return
        }
        print("Hello \(name)")
        
        guard let location = person["location"] else {
            print("I hope the weather is nice near you .")
            return
        }
        print(location)
    }
    
    func greet2(preson:String) -> String {
        return "\(preson)好人好事"
    }
    
    func greet3(preson:String) -> String {
        return "\(preson)你妹妹"
    }
    
    func greet4(person:String) -> Int? {
        return Int(person)
    }
    
    func greet5(preson:String) -> Int {
        return preson.count
    }
    
    func greet6(array:[Int]) -> (min:Int,max:Int) {
        var Min = array.first
        var Max = array.first
        for value in array[1..<array.count] {
            if value < Min!{
                Min = value
            }else if value > Max!{
                Max = value
            }
        }
        return (Min!,Max!)
    }
    
    func grert7(par person:String) -> String {
        return person
    }
    
    func greet8(par preson:String,par2 number:Int = 100) -> (String,Int) {
        print("dsfsadfsdfdsfsd\(number)");
        return (preson,number)
    }
}

class Person: NSObject {
    var name:String = "小猫"
    var age:Int = 100
    var add:String = "活信"
    var cal:String = "五年级"
    var XingB:String = "男"
    var sort:Int = 100
    init(name na:String,age ag:Int,add ad:String,cal ca:String,XingB XB:String,sort so:Int) {
        self.name = na
        self.age = ag
        self.add = ad
        self.cal = ca
        self.XingB = XB
        self.sort = so
    }
}

struct Personrrr {
    var person333:Person {
        get{
            return Person.init(name: "戴维", age: 200, add: "fsadfsda", cal: "fdsfdsfsdf", XingB: "fdsfdsfdsf", sort: 20000)
        }
        set(newPerson){
            
        }
    }
    
}

