//
//  ViewController.swift
//  demoThree
//
//  Created by MacPro on 2018/3/21.
//  Copyright © 2018年 JoeMac01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var strMsg: String = ""

    @IBOutlet weak var btnOne: UIButton!
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var btnSpring: UIButton!
    @IBOutlet weak var btnArray: UIButton!
    @IBOutlet weak var btnDic: UIButton!
    @IBOutlet weak var btnSet: UIButton!
    
    
    @IBAction func btnSpring_Click(_ sender: Any) {
        var myString1: String = "Hello World!!\n"
        myString1.insert("X", at: myString1.index(myString1.startIndex, offsetBy: 6))

        myString1.insert(contentsOf: "今天是3.12", at:myString1.index(myString1.startIndex, offsetBy: 7))
        let range: Range = myString1.startIndex..<myString1.index(myString1.startIndex, offsetBy: 5)
        myString1.removeSubrange(range)
        let intCount: Int = myString1.count
        strMsg += myString1 + "共有\(intCount)個字元"
        strMsg += myString1
        myTextView.text = strMsg
        
    }
    @IBAction func btnArray_Click(_ sender: Any) {
        let myArrayOne: [Int] = [5,6,7,8]//不可變動
        strMsg += "此陣列有\(myArrayOne.count)個元素，第二個元素是\(myArrayOne[1])\n"
        var myArrayTwo: [String] = [String]()
        myArrayTwo.append("One")
        myArrayTwo += ["Two"]
        myArrayTwo += ["Three","Four","Five","Six"]
        myArrayTwo.insert("Three.Five", at: 2)
        myArrayTwo.insert(contentsOf: ["11","22"], at: 3)
        myArrayTwo.remove(at: 2)
        myArrayTwo.removeLast()
        myArrayTwo.removeSubrange(2..<4)
        for myStr in myArrayTwo{
            strMsg += myStr + "\n"
        }
        myTextView.text = strMsg
    }
    @IBAction func btnDic_Click(_ sender: Any) {
        
        var dicOne: [String:Any] = ["PC":"個人電腦", "Mobile":"手機","Tablet":"平板電腦"]
        dicOne["Table"] = "平板電腦"
        dicOne["Smart Phne"] = "智慧手機"
        dicOne["PC"] = nil
        for (myKey, myValue) in dicOne {
            self.strMsg += "key:\(myKey), value:\(myValue) \n"
        }
        
        self.myTextView.text = strMsg
        self.myTextView.text = nil
    }
    @IBAction func btnSet_Click(_ sender: Any) {
        var setOne: Set<String> = ["Tom","John","Mary","Joy"]
        setOne.insert("Alex")
        setOne.remove("Joy")
        
        for myName in setOne {
            self.strMsg += myName + "\n"
        }
        if setOne.contains("Mary"){
            strMsg += "包含Mary \n"
        }
        strMsg += "---------------\n"
        self.myTextView.text = strMsg
        let setTwo: Set<String> = ["David", "Grace", "Jason", "John"]
        //let setThree = setOne.union(setTwo)
        //let setThree = setOne.intersection(setTwo)
        //let setThree = setOne.subtracting(setTwo)
        let setThree = setOne.symmetricDifference(setTwo)//重複報名剔除資格
        for myName in setThree {
            strMsg += myName +
            "\n"
        }
        //let mArray = Array(setOne)//轉成陣列
        
        self.myTextView.text = strMsg
    }
    
    @IBAction func btnOne_Click(_ sender: Any) {
        
        let myButton: UIButton = sender as! UIButton
        
        strMsg += "按鈕One\n" + "按鈕One按下:\(myButton.tag)\n"
        myTextView.text = strMsg
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        strMsg = "歡迎使用本程式\n"
        myTextView.text = strMsg
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

