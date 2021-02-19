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
        
        

        // Do any additional setup after loading the view.
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
