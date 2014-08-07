//
//  ViewController.swift
//  Localisation Demo
//
//  Created by Ravi Shankar on 07/08/14.
//  Copyright (c) 2014 Ravi Shankar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var currencyLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        populateValues()
    }
    
    func populateValues() {
        textLabel.text = NSLocalizedString("GOOD_MORNING",comment:"Good Morning")
        numberLabel.text = numberFormatter.stringFromNumber(9999999.999)
        currencyLabel.text = currencyFormatter.stringFromNumber(5000)
        dateLabel.text = dateFormatter.stringFromDate(NSDate())
        imageView.image = UIImage(named: "hello")
    }
    
    var numberFormatter: NSNumberFormatter {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .DecimalStyle
        return formatter
    }
    
    var currencyFormatter: NSNumberFormatter {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        return formatter
    }
    
    var dateFormatter: NSDateFormatter {
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .MediumStyle
        return formatter
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

