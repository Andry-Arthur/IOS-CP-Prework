//
//  ViewController.swift
//  IOS-Prework
//
//  Created by Marko Tsymbaluk on 1/26/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor {
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        adjustTextColor(for: randomColor)
    }
    
    @IBOutlet weak var nameAndUni: UILabel!
    
    func adjustTextColor(for backgroundColor: UIColor) {
            // Extract the red, green, and blue components of the color
            var red: CGFloat = 0
            var green: CGFloat = 0
            var blue: CGFloat = 0
            var alpha: CGFloat = 0
            
            backgroundColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
            
            // Calculate the luminance
            let luminance = (0.299 * red + 0.587 * green + 0.114 * blue)
            
            // Set text color based on luminance
            nameAndUni.textColor = luminance > 0.5 ? .black : .white
        }

}

