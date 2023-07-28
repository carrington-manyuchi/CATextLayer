//
//  ViewController.swift
//  CATextLayer
//
//  Created by DA MAC M1 157 on 2023/07/28.
//

import UIKit

class ViewController: UIViewController {
   
    
     let myLayer: CATextLayer = {
         let text = "Carrington Manyuchi"
         let font: CFString = "Noteworthy-Light" as CFString
         let layer = CATextLayer()
         layer.foregroundColor = UIColor.brown.cgColor
         layer.isWrapped  = true
         layer.alignmentMode = .center
         layer.contentsScale = UIScreen.main.scale
         layer.string = text
         layer.font = CTFontCreateWithName( font, 25, nil)
         return layer
    }()
    
    private var myView: UIView = {
        let view = UIView()
        //view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        view.backgroundColor = .black
        
        return view
    }()
    
    // first loading func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myView)
        myView.center = self.view.center
        myLayer.frame = myView.bounds
        myView.layer.addSublayer(myLayer)
        
    }


}

