//
//  JokeVC.swift
//  iKid
//
//  Created by stlp on 5/3/22.
//

import UIKit

class JokeVC: UIViewController {

    @IBOutlet weak var centerLabel: UILabel!
    
    var joke : String = ""
    var root : ViewController! = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        centerLabel.text = joke
    }
    
    @IBAction func next(_ sender: UIButton) {
        let punchline = punchlineViewBuilder("punchline")
//        print(rootView.GOOD_JOKE_QUESTION)
        //rootView.switching(punchlineView)
    }
    
    private func punchlineViewBuilder(_ punchline: String) -> PunchlineVC{
        let punchlineVC = storyboard?.instantiateViewController(withIdentifier: "PunchlineVC") as! PunchlineVC
        punchlineVC.punchline = punchline
        return punchlineVC
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
