//
//  ViewController.swift
//  TestTask
//
//  Created by macbook on 30.01.22.
//

import UIKit
import Firebase
import FirebaseStorage


class ViewController: UIViewController {

    private lazy var labelImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Vector")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private lazy var labelImage2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Vector")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.text = "ЛОКАЦИИ"
        label.textAlignment = .center
        label.font = UIFont(name: "Oswald", size: 15)
        label.font = label.font.withSize(32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var viewCentral: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.7
        view.layer.shadowRadius = 4.0
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white

        return view
    }()

    private lazy var stackView: UIStackView = {
        let stakView = UIStackView()
        stakView.spacing = 15
        stakView.layer.cornerRadius = 10
        stakView.axis = .horizontal
        stakView.distribution = .fillEqually
        stakView.translatesAutoresizingMaskIntoConstraints = false
        stakView.backgroundColor = .lightGray

        return stakView
    }()

    private lazy var textField: UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "Название локации"
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()

    private lazy var addButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("+", for: UIControl.State())
        button.setTitleColor(.white, for: UIControl.State())
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        button.layer.cornerRadius = button.frame.size.height / 2
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var image1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage()
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.isUserInteractionEnabled = true
        image.backgroundColor = .white
        return image
    }()

    private lazy var image2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: urlString)
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.isUserInteractionEnabled = true
        image.backgroundColor = .white
        return image
    }()

    private lazy var image3: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: urlString)
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.isUserInteractionEnabled = true
        image.backgroundColor = .white
        return image
    }()

    private lazy var image4: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: urlString)
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.isUserInteractionEnabled = true
        image.backgroundColor = .white
        return image
    }()

    private lazy var image5: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: urlString)
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.isUserInteractionEnabled = true
        image.backgroundColor = .white
        return image
    }()

    private lazy var image6: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: urlString)
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.isUserInteractionEnabled = true
        image.backgroundColor = .white
        return image
    }()

    private var urlString: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)

        setupConstraints()
    }

    private func upload(currentUserId: String, photo: UIImage, completion: @escaping (Result<URL, Error>) -> Void) {
        let ref = Storage.storage().reference().child("")

        guard let imageData = image1.image?.jpegData(compressionQuality: 0.4) else { return }

        let metadata = StorageMetadata()
        metadata.contentType = "image/png"

        ref.putData(imageData, metadata: metadata) { (metadata, error) in
            guard let _ = metadata else {
                completion(.failure(error!))
                return
            }
            ref.downloadURL { (url, error) in
                guard let url = url else {
                    completion(.failure(error!))
                    return
                }
                completion(.success(url))
            }
        }
    }

    private func imageTapped(_ sender: UITapGestureRecognizer) {
        let image1 = sender.view as! UIImageView
        let newImageView = UIImageView(image: image1.image)
        newImageView.frame = UIScreen.main.bounds
        newImageView.backgroundColor = .black
        newImageView.contentMode = .scaleAspectFit
        newImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        newImageView.addGestureRecognizer(tap)
        self.view.addSubview(newImageView)
    }

    @objc func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
        sender.view?.removeFromSuperview()
    }

    private func setupConstraints() {
        view.addSubview(labelImage)
        view.addSubview(labelImage2)
        view.addSubview(textLabel)
        view.addSubview(viewCentral)
        view.addSubview(stackView)
        view.addSubview(textField)
        view.addSubview(addButton)
        view.addSubview(image1)
        view.addSubview(image2)
        view.addSubview(image3)
        view.addSubview(image4)
        view.addSubview(image5)
        view.addSubview(image6)

        NSLayoutConstraint.activate([
            labelImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            labelImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            labelImage.widthAnchor.constraint(equalToConstant: 460),
            labelImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 107),
            labelImage.heightAnchor.constraint(equalToConstant: 49),
            labelImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelImage2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 90),
            labelImage2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -90),
            labelImage2.widthAnchor.constraint(equalToConstant: 350),
            labelImage2.topAnchor.constraint(equalTo: view.topAnchor, constant: 135),
            labelImage2.heightAnchor.constraint(equalToConstant: 39),
            textLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 115),
            textLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -115),
            textLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 115),
            viewCentral.leftAnchor.constraint(equalTo: view.leftAnchor),
            viewCentral.rightAnchor.constraint(equalTo: view.rightAnchor),
            viewCentral.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            viewCentral.heightAnchor.constraint(equalToConstant: 300),
            textField.leftAnchor.constraint(equalTo: stackView.leftAnchor, constant: 5),
            textField.rightAnchor.constraint(equalTo: stackView.rightAnchor, constant: -60),
            textField.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 2),
            textField.heightAnchor.constraint(equalToConstant: 30),
            stackView.leftAnchor.constraint(equalTo: viewCentral.leftAnchor, constant: 15),
            stackView.rightAnchor.constraint(equalTo: viewCentral.rightAnchor, constant: -15),
            stackView.topAnchor.constraint(equalTo: viewCentral.topAnchor, constant: 15),
            stackView.bottomAnchor.constraint(equalTo: viewCentral.bottomAnchor, constant: -15),
            addButton.rightAnchor.constraint(equalTo: viewCentral.rightAnchor, constant: -20),
            addButton.topAnchor.constraint(equalTo: viewCentral.topAnchor, constant: 20),
            addButton.widthAnchor.constraint(equalToConstant: 25),
            addButton.heightAnchor.constraint(equalToConstant: 25),
            image1.leftAnchor.constraint(equalTo: stackView.leftAnchor, constant: 15),
            image1.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 5),
            image1.widthAnchor.constraint(equalToConstant: 110),
            image1.heightAnchor.constraint(equalToConstant: 110),
            image2.leftAnchor.constraint(equalTo: stackView.leftAnchor, constant: 15),
            image2.topAnchor.constraint(equalTo: image1.bottomAnchor, constant: 5),
            image2.widthAnchor.constraint(equalToConstant: 110),
            image2.heightAnchor.constraint(equalToConstant: 110),
            image3.leftAnchor.constraint(equalTo: image1.rightAnchor, constant: 10),
            image3.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 5),
            image3.widthAnchor.constraint(equalToConstant: 110),
            image3.heightAnchor.constraint(equalToConstant: 110),
            image4.leftAnchor.constraint(equalTo: image3.rightAnchor, constant: 10),
            image4.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 5),
            image4.widthAnchor.constraint(equalToConstant: 110),
            image4.heightAnchor.constraint(equalToConstant: 110),
            image5.leftAnchor.constraint(equalTo: image2.rightAnchor, constant: 10),
            image5.topAnchor.constraint(equalTo: image3.bottomAnchor, constant: 5),
            image5.widthAnchor.constraint(equalToConstant: 110),
            image5.heightAnchor.constraint(equalToConstant: 110),
            image6.leftAnchor.constraint(equalTo: image5.rightAnchor, constant: 10),
            image6.topAnchor.constraint(equalTo: image4.bottomAnchor, constant: 5),
            image6.widthAnchor.constraint(equalToConstant: 110),
            image6.heightAnchor.constraint(equalToConstant: 110)
        ])
    }

}
