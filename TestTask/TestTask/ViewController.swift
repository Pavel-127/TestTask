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
        label.font = label.font.withSize(32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()




    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(conteinerView)
        view.addSubview(conteinerView1)
        view.addSubview(label)
        updateConstraints()
        updateConstraints1()
        updateConstraints2()

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
}

