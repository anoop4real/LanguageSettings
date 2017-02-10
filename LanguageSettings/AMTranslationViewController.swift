//
//  AMTranslationViewController.swift
//  MyCatalogue
//
//  Created by anoopm on 09/02/17.
//  Copyright © 2017 anoopm. All rights reserved.
//

import UIKit

class AMTranslationViewController: UIViewController {

    
    @IBOutlet var languagelbls: [UILabel]!
    @IBOutlet var buttons: [UIButton]!
    let defaultLocalizer = AMPLocalizeUtils.defaultLocalizer
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func selectLanguage(sender: AnyObject) {
        let btn = (sender as! UIButton)
        switch btn.tag {
        case 1:
            defaultLocalizer.setSelectedLanguage(lang: "en")
        case 2:
            defaultLocalizer.setSelectedLanguage(lang: "fr")
        case 3:
            defaultLocalizer.setSelectedLanguage(lang: "it")
        default:
            break
        }
        
        self.refreshlabels()
    }
    func refreshlabels() {
        for lbl: UILabel in languagelbls {
            switch lbl.tag {
            case 1:
                lbl.text! =  defaultLocalizer.stringForKey(key: "Red")
            case 2:
                lbl.text! = defaultLocalizer.stringForKey(key: "Green")
            case 3:
                lbl.text! = defaultLocalizer.stringForKey(key: "Blue")
            case 4:
                lbl.text! = defaultLocalizer.stringForKey(key: "Brown")
            case 5:
                lbl.text! = defaultLocalizer.stringForKey(key: "Black")
            case 6:
                lbl.text! = defaultLocalizer.stringForKey(key: "Yellow")
            default:
                break
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
