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
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false



        return image
    }()











    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(conteinerView)

        updateConstraints()

    }

    func updateConstraints() {
        conteinerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        conteinerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        conteinerView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        conteinerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

