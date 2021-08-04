//
//  ViewController.swift
//  stormViewer
//
//  Created by Евгений Фирман on 03.08.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        var pictures = [String]()
        
        super.viewDidLoad()
        
        let fm = FileManager.default
        
        let path = Bundle.main.resourcePath!
        
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            
            if item.hasPrefix("nssl") {
                
                pictures.append(item)
                
            }
        }
    }


}

