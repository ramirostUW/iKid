//
//  PunchlineVC.swift
//  iKid
//
//  Created by stlp on 5/3/22.
//

import UIKit

class PunchlineVC: UIViewController {
    
    @IBOutlet weak var centerLabel: UILabel!
    var punchline : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        centerLabel.text = punchline
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
