//
//  ResultViewController.swift
//  QuizMulti-iOSSwoft
//
//  Created by Antt Min on 3/2/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var getScore = 0
    var scoreTotal = 10
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scoreLabel.text = " \(getScore) / \(scoreTotal)"
    }
  
    @IBAction func reStartbutton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
