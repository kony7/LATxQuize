//
//  ResultViewController.swift
//  Quize
//
//  Created by 小西星七 on 2021/02/19.
//

import UIKit

class ResultViewController: UIViewController {
    
    var correctAnser: Int = 0
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = String(correctAnser)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buck() {
        
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
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
