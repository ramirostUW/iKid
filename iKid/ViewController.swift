//
//  ViewController.swift
//  iKid
//
//  Created by stlp on 5/3/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var viewOnDisplay : UIViewController! = nil
    
    private func jokeBuilder(_ joke: String) -> JokeVC {
        let jokeView = storyboard?.instantiateViewController(withIdentifier: "JokeVC") as! JokeVC
//        questionView.questionLabel.text = question
        jokeView.joke = joke
        jokeView.root = self
        return jokeView
    }
    
    @IBAction func switchViews(_ sender: UIBarButtonItem, _ target: UIViewController) {

        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        
        if viewOnDisplay != nil &&
            viewOnDisplay?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            target.view.frame = view.frame
            switchViewController(viewOnDisplay, to: target)
        }
        else {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            firstViewController.view.frame = view.frame
            switchViewController(target, to: viewOnDisplay)
        }
        UIView.commitAnimations()
    }
    
    fileprivate func switchViewController(_ from: UIViewController?, to: UIViewController?) {
        if from != nil {
            from!.willMove(toParent: nil)
            from!.view.removeFromSuperview()
            from!.removeFromParent()
        }
        
        if to != nil {
            self.addChild(to!)
            self.view.insertSubview(to!.view, at: 0)
            to!.didMove(toParent: self)
        }
    }
}

