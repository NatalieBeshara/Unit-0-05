
// Created on: 14-Sept-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program does basic math, using UIKit

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let questionLabel = UILabel()
    let areaLabel = UILabel()
    let perimeterLabel = UILabel()
    let answerButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLabel.text = "What is the area and the perimeter of a rectangle with a length of 5cm and a width of 3cm?"
        questionLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(questionLabel)
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        areaLabel.text = "Area ="
        areaLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(areaLabel)
        areaLabel.translatesAutoresizingMaskIntoConstraints = false
        areaLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        areaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        
        
        
        perimeterLabel.text = "Perimeter ="
        perimeterLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(perimeterLabel)
        perimeterLabel.translatesAutoresizingMaskIntoConstraints = false
        perimeterLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 140).isActive = true
        perimeterLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        
        answerButton.setTitle("Answer", for: UIControlState.normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(showText), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 55).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        
    }
    @objc func showText() {
        areaLabel.text = "Area =\(5*3) cm^2"
        perimeterLabel.text = "Perimeter =\(5+5+3+3) cm"
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
