//
//  ViewController.swift
//  whenWhoGame
//
//  Created by Towa Aoyagi on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var whenLavel: UILabel!
    @IBOutlet weak var whereLabel: UILabel!
    @IBOutlet weak var whatLabel: UILabel!
    @IBOutlet weak var whoLabel: UILabel!
    
    let whenArray: [String] = ["今日","昨日","1年前","先週"]
    let whereArray: [String] = ["学校で","アメリカで","クラスで","家で"]
    let whoArray: [String] = ["僕が","友達が","親が","先生が"]
    let whatArray: [String] = ["遊んだ","勉強した","開発した","喋った"]
    
    var index: Int = 0


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func random() {
        let whenIndex = Int.random(in: 0...3)
        let whereIndex = Int.random(in: 0...3)
        let whoIndex = Int.random(in: 0...3)
        let whatIndex = Int.random(in: 0...3)
        
        whenLavel.text = whenArray[whenIndex]
        whereLabel.text = whereArray[whereIndex]
        whoLabel.text = whoArray[whoIndex]
        whatLabel.text = whatArray[whatIndex]

    }
    
    @IBAction func change() {
        whenLavel.text = whenArray[index]
        whereLabel.text = whereArray[index]
        whoLabel.text = whoArray[index]
        whatLabel.text = whatArray[index]
        
        index += 1
        
        if index > 3 {
            index = 0
        }
    }
    
    @IBAction func reset() {
        whenLavel.text = "---"
        whereLabel.text = "---"
        whoLabel.text = "---"
        whatLabel.text = "---"
    }
}

