//
//  ViewController.swift
//  Menu
//
//  Created by Xiaomi on 28.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let incrementButton = UIButton(type: .system)
    let valueLabel = UILabel()
    let commentLabel = UILabel()
    var value = Int32()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupIncrementButton() {
        incrementButton.setTitle("Increment", for: .normal)
        incrementButton.setTitleColor(.black, for: .normal)
        incrementButton.layer.cornerRadius = 12
        incrementButton.titleLabel?.font = .systemFont(ofSize:
                        0.038 * self.view.bounds.size.height, weight: .medium)
        incrementButton.backgroundColor = .white
        incrementButton.layer.shadowColor = UIColor.black.cgColor
        incrementButton.layer.shadowOffset = CGSize(width: 5, height:5)
        incrementButton.layer.shadowRadius = 5
        incrementButton.layer.shadowOpacity = 0.25
        self.view.addSubview(incrementButton)
        incrementButton.setHeight(0.1 * self.view.bounds.size.height)
        incrementButton.setWidth(0.95 * self.view.bounds.size.width)
        incrementButton.pinCenter(to: view)
        incrementButton.addTarget(self, action:
                                    #selector(incrementButtonPressed), for: .touchUpInside)
    }
    
    private func setupValueLabel() {
        valueLabel.font = .systemFont(ofSize: 0.08 * self.view.bounds.size.height, weight: .bold)
        valueLabel.textColor = .black
        valueLabel.text = "\(value)"
        updateCommentLabel(value: value)
        self.view.addSubview(valueLabel)
        valueLabel.pinBottom(to: incrementButton.topAnchor, 0.03 * self.view.bounds.size.height)
        valueLabel.pinCenterX(to: self.view)
    }
    
    private func setupView() {
        view.backgroundColor = .systemGray6
        setupCommentView()
        setupIncrementButton()
        setupValueLabel()
        setupMenuButtons()
    }
    
    @objc
    private func incrementButtonPressed() {
        value += 1
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
        UIView.animate(withDuration: 1) {
            self.updateUI()
        }
    }
    
    private func setupCommentView() {
        let commentView = UIView()
        commentView.backgroundColor = .white
        commentView.layer.cornerRadius = 12
        commentView.setHeight(0.1 * self.view.bounds.size.height)
        commentView.setWidth(0.95 * self.view.bounds.size.width)
        view.addSubview(commentView)
        commentView.pinTop(to: self.view.safeAreaLayoutGuide.topAnchor)
        commentView.pinCenterX(to: self.view)
        commentLabel.font = .systemFont(ofSize: 0.038 * self.view.bounds.size.height,
                                        weight: .regular)
        commentLabel.textColor = .systemGray
        commentLabel.numberOfLines = 0
        commentLabel.textAlignment = .center
        commentView.addSubview(commentLabel)
        commentLabel.pinCenter(to: commentView)
    }
    
    func updateCommentLabel(value: Int32) {
        switch value {
            case 0...10:
                commentLabel.text = "1"
            case 10...20:
                commentLabel.text = "2"
            case 20...30:
                commentLabel.text = "3"
            case 30...40:
                commentLabel.text = "4"
            case 40...50:
                commentLabel.text = "! ! ! ! ! ! ! ! ! "
            case 50...60:
                commentLabel.text = "big boy"
            case 60...70:
                commentLabel.text = "70 70 70 moreeeee"
            case 70...80:
                commentLabel.text = "⭐ ⭐ ⭐ ⭐ ⭐ ⭐ ⭐ ⭐ ⭐ "
            case 80...90:
                commentLabel.text = "80+\n go higher!"
            case 90...100:
                commentLabel.text = "100!! to the moon!!"
            default:
                break
        }
    }
    
    private func makeMenuButton(title: String) -> UIButton {
        let button = UIButton()
        let width = 0.29 * self.view.bounds.size.width
        // making square button
        button.setWidth(width)
        button.setHeight(width)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 12
        button.titleLabel?.font = .systemFont(ofSize: 0.038 * self.view.bounds.size.height,
                                              weight: .medium)
        button.backgroundColor = .white
        button.heightAnchor.constraint(equalTo:
                                        button.widthAnchor).isActive = true
        return button
    }
    
    private func setupMenuButtons() {
        let colorsButton = makeMenuButton(title: "🎨")
        let notesButton = makeMenuButton(title: "📝")
        let newsButton = makeMenuButton(title: "📰")
        let buttonsSV = UIStackView(arrangedSubviews:
                                        [colorsButton, notesButton, newsButton])
        buttonsSV.spacing = 0.04 * self.view.bounds.width
        buttonsSV.axis = .horizontal
        buttonsSV.distribution = .fillEqually
        self.view.addSubview(buttonsSV)
        buttonsSV.pinCenterX(to: self.view)
        buttonsSV.pinBottom(to:
                                self.view.safeAreaLayoutGuide.bottomAnchor, 0.03 * self.view.bounds.size.height)
    }
    
    private func updateUI() {
        setupValueLabel()
    }
}

