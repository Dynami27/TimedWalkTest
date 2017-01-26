//
//  ViewController.swift
//  timedwalktest
//
//  Created by Khalid Mohamed on 12/9/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//
import ResearchKit
import CoreMotion
class ViewController: UIViewController{

    @IBAction func buttonTapped(_ sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: timedWalk, taskRun: nil)
        taskViewController.delegate = self
        taskViewController.outputDirectory = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as! String, isDirectory: true) as URL
        present(taskViewController, animated: true, completion: nil)
    }

}

  extension ViewController : ORKTaskViewControllerDelegate {
func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
    //Handle results with taskViewController.result
    taskViewController.dismiss(animated: true, completion: nil)
    }

    if (taskViewController.task?.identifier == "WalkTask"
    && reason == .Completed) {
        
        let heartURLs = ResultParser.findWalkHeartFiles(ViewController.result)
        
        for url in heartURLs {
            do {
                let string = try NSString.init(contentsOfURL: url, encoding: NSUTF8StringEncoding)
                print(string)
            } catch {}
        }
}
}
