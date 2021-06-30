//
//  ViewController.swift
//  ImageViewTest
//
//  Created by David Yoon on 2021/06/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textView: UITextField!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var privButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    
    var imageCount: Int = 1
    var maxCount = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: "\(imageCount).png")
        textView.text = "\(imageCount).png"
    }

    
    @IBAction func getPrivImage(_ sender: UIButton) {
        print("\(imageCount)")
        if (imageCount <= 1 ) {
            imageCount = maxCount
        } else if (imageCount > maxCount) {
            imageCount = 1
            
        }else {
            imageCount -= 1
        }
        imageView.image = UIImage(named: "\(imageCount).png")
        textView.text = "\(imageCount).png"
        
    }
    
    @IBAction func getNextImage(_ sender: UIButton) {
        if (imageCount < 1 ) {
            imageCount = maxCount
        } else if (imageCount >= maxCount) {
            imageCount = 1
            
        }else {
            imageCount += 1
        }
        imageView.image = UIImage(named: "\(imageCount).png")
        textView.text = "\(imageCount).png"
        
    }
    
}

