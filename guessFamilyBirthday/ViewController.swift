//
//  ViewController.swift
//  guessFamilyBirthday
//
//  Created by Duncan on 2016/2/27.
//  Copyright © 2016年 Duncan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questionIndex = 1
    var correctIndex = 1
    var winCount = 0
    var loseCount = 0
    var questionArray = ["2月7日？", "2月14日？", "2月17日？", "2月27日？", "3月3日？", "3月8日？", "3月18日？", "3月20日？", "4月19日？", "4月25日？", "5月15日？", "5月18日？", "5月23日？", "6月26日？", "7月1日？", "7月19日？", "8月2日？", "9月4日？", "10月1日？", "10月2日？", "10月19日？", "10月21日？", "11月6日？", "11月12日？", "11月19日？", "11月23日？", "12月13日？", "12月14日？", "12月25日？", "第二屆高度配合獎", "第二屆健康提醒獎", "第二屆最佳潛水獎"]
    
    @IBOutlet weak var rightCount: UILabel!
    @IBOutlet weak var wrongCount: UILabel!
    @IBOutlet weak var ButtonA: UIButton!
    @IBOutlet weak var ButtonB: UIButton!
    @IBOutlet weak var ButtonC: UIButton!
    @IBOutlet weak var questionLebal: UILabel!
    @IBOutlet weak var correctOrIncorrectImage: UIImageView!
    //按鈕動作
    func buttonAction(){
        ButtonA.userInteractionEnabled = false
        ButtonB.userInteractionEnabled = false
        ButtonC.userInteractionEnabled = false
        correctOrIncorrectImage.hidden = false
        NSTimer.scheduledTimerWithTimeInterval(1.2, target: self, selector: Selector("viewDidLoad"), userInfo: nil, repeats: false)
        rightCount.text = "Right：\(winCount)"
        wrongCount.text = "Wrong：\(loseCount)"
    }
    
    @IBAction func buttonA(sender: UIButton) {
        if correctIndex == 1{
            correctOrIncorrectImage.image = UIImage(named: "Correct")
            winCount++
        }else{
            correctOrIncorrectImage.image = UIImage(named: "Incorrect")
            loseCount++
        }
        buttonAction()
    }
    @IBAction func buttonB(sender: UIButton) {
        if correctIndex == 2{
            correctOrIncorrectImage.image = UIImage(named: "Correct")
            winCount++
        }else{
            correctOrIncorrectImage.image = UIImage(named: "Incorrect")
            loseCount++
        }
        buttonAction()
    }
    @IBAction func buttonC(sender: UIButton) {
        if correctIndex == 3{
            correctOrIncorrectImage.image = UIImage(named: "Correct")
            winCount++
        }else{
            correctOrIncorrectImage.image = UIImage(named: "Incorrect")
            loseCount++
        }
        buttonAction()
    }
    /*override func viewDidLoad() {
        super.viewDidLoad()
    }*/
    override func viewDidLoad() {
        super.viewDidLoad()

        correctOrIncorrectImage.hidden = true
        ButtonA.userInteractionEnabled = true
        ButtonB.userInteractionEnabled = true
        ButtonC.userInteractionEnabled = true
        questionIndex = Int(arc4random_uniform(UInt32(questionArray.count)))
        //questionIndex = Int(arc4random_uniform(UInt32(3)))+29
        questionLebal.text = questionArray[questionIndex]
        correctIndex = Int(arc4random_uniform(3)+1)
        if correctIndex == 1{
            ButtonA.setImage(UIImage(named: String(questionIndex)), forState: .Normal)
            ButtonB.setImage(UIImage(named: String(questionIndex+1)), forState: .Normal)
            ButtonC.setImage(UIImage(named: String(questionIndex+2)), forState: .Normal)
        }else if correctIndex == 2{
            ButtonB.setImage(UIImage(named: String(questionIndex)), forState: .Normal)
            ButtonA.setImage(UIImage(named: String(questionIndex+1)), forState: .Normal)
            ButtonC.setImage(UIImage(named: String(questionIndex+2)), forState: .Normal)
        }else{
            ButtonC.setImage(UIImage(named: String(questionIndex)), forState: .Normal)
            ButtonB.setImage(UIImage(named: String(questionIndex+1)), forState: .Normal)
            ButtonA.setImage(UIImage(named: String(questionIndex+2)), forState: .Normal)
        }
        print(questionIndex)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}

