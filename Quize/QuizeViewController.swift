//
//  QuizeViewController.swift
//  Quize
//
//  Created by 小西星七 on 2021/02/19.
//

import UIKit

class QuizeViewController: UIViewController {
    
    var quizeArray = [Any]()
    
    var correctAnser: Int = 0

    @IBOutlet var quizeImageView: UIImageView!
    
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    @IBOutlet var choiceButton3: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        quizeArray.append(["yabana","Rei Yabana","Yuki Wada","Reia Nakamura",1])
        quizeArray.append(["konpi","Rei Yabana","Taiki Konnno","Taiko Sasaki",2])
        quizeArray.append(["noel","Noel Kawashima","Kaito Matsukura","Ryuya Shimakake",1])
        quizeArray.append(["ryuga","Yuto Nasu","Taisho Iwasaki","Ryuga Sato",3])
        
        quizeArray.shuffle()
        choiceQuize()

        // Do any additional setup after loading the view.
    }
    
    func choiceQuize(){
        
        let tmpArray = quizeArray[0] as! [Any]
        
        quizeImageView.image = UIImage(named: "\(tmpArray[0]).png")
        
        choiceButton1.setTitle(tmpArray[1] as? String, for: .normal)
        choiceButton2.setTitle(tmpArray[2] as? String, for: .normal)
        choiceButton3.setTitle(tmpArray[3] as? String, for: .normal)
        
    }
    
    func performSegueToResult(){
        
        performSegue(withIdentifier: "toResultView", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultView"{
            let resultViewController = segue.destination as! ResultViewController
            
            resultViewController.correctAnser = self.correctAnser
        }
    }
    
    @IBAction func choiceAnswer(sender:UIButton){
        
        let tmpArray = quizeArray[0] as! [Any]
        
        if tmpArray[4] as! Int == sender.tag{
            
            correctAnser += 1
            
        }
        
        quizeArray.remove(at: 0)
        
        if quizeArray.count == 0{
            
            performSegueToResult()
            
        }else{
            
            choiceQuize()
            
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
