//
//  ViewController.swift
//  TestTask
//
//  Created by macbook on 30.01.22.
//

import UIKit


class ViewController: UIViewController {

    var conteinerView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Vector")
//        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    var conteinerView1: UIImageView = {
        let image1 = UIImageView()
        image1.image = UIImage(named: "Vector")
//        image1.contentMode = .scaleAspectFill
        image1.clipsToBounds = true
        image1.translatesAutoresizingMaskIntoConstraints = false
        return image1
    }()

    var label: UILabel = {
        let label = UILabel()
        label.text = "ЛОКАЦИИ"
        label.textAlignment = .center
        label.font = UIFont(name: "Oswald", size: 15)
        label.font = label.font.withSize(32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var view1: UIView = {
        let view = UIView()
//        view.spacing = 15
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.7
        view.layer.shadowRadius = 4.0
//        view.axis = .horizontal
//        view.distribution = .fillEqually
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white

        return view
    }()

    var stackView: UIStackView = {
        let stakView = UIStackView()
        stakView.spacing = 15
        stakView.layer.cornerRadius = 10
        stakView.axis = .horizontal
        stakView.distribution = .fillEqually
        stakView.translatesAutoresizingMaskIntoConstraints = false
        stakView.backgroundColor = .lightGray

        return stakView
    }()

    var textField: UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "Название локации"
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()

    var addButton: UIButton = {
        let button = UIButton()
        button.image(for: .normal)
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        view.addSubview(conteinerView)
        view.addSubview(conteinerView1)
        view.addSubview(label)
        view.addSubview(view1)
        view.addSubview(stackView)
        view.addSubview(textField)
        updateConstraints()
        updateConstraints1()
        updateConstraints2()
        updateConstraints3()
        updateConstraints4()
        updateConstraints5()
    }

    func updateConstraints() {
        conteinerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        conteinerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50).isActive = true
        conteinerView.widthAnchor.constraint(equalToConstant: 460).isActive = true
        conteinerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 107).isActive = true
        conteinerView.heightAnchor.constraint(equalToConstant: 49).isActive = true
    }

    func updateConstraints1() {
        conteinerView1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 90).isActive = true
        conteinerView1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -90).isActive = true
        conteinerView1.widthAnchor.constraint(equalToConstant: 350).isActive = true
        conteinerView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 135).isActive = true
        conteinerView1.heightAnchor.constraint(equalToConstant: 39).isActive = true
    }

    func updateConstraints2() {
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 115).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -115).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 115).isActive = true
        conteinerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    func updateConstraints3() {
        view1.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        view1.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        view1.heightAnchor.constraint(equalToConstant: 300).isActive = true
//        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func updateConstraints4() {
        textField.leftAnchor.constraint(equalTo: stackView.leftAnchor, constant: 5).isActive = true
        textField.rightAnchor.constraint(equalTo: stackView.rightAnchor, constant: -60).isActive = true
        textField.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 2).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func updateConstraints5() {
        stackView.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 15).isActive = true
        stackView.rightAnchor.constraint(equalTo: view1.rightAnchor, constant: -15).isActive = true
        stackView.topAnchor.constraint(equalTo: view1.topAnchor, constant: 15).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -15).isActive = true
//        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}

