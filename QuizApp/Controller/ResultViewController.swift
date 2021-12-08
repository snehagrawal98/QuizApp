//
//  ResultViewController.swift
//  QuizApp
//
//  Created by mnameit on 09/12/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    var correct = 0
    var total = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        lbl2.text = "You got \(correct) out of \(total) correct."
     //   var percentRight = Double(correct)/Double(total)
     //   percentRight == 100
        var title = ""
        if correct == 2 || correct == 1 || correct == 0{
            title = "Not Good ☹️"
        } else if correct == 4 || correct == 3 {
            title = "Good job 😎"
        } else {
            title = "Great Job 🤩"
        }
        lbl1.text = title
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lbl1: UILabel!
    
    
    @IBOutlet weak var lbl2: UILabel!
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
