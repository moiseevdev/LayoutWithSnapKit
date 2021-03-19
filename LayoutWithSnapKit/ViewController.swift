//
//  ViewController.swift
//  LayoutWithSnapKit
//
//  Created by Андрей Моисеев on 18.03.2021.
//

import SnapKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initilize()
    }

    private func initilize() {
        view.backgroundColor = UIColor(red: 4/255, green: 133/255, blue: 157/255, alpha: 1)
        
        let nameLabel = UILabel()
        nameLabel.text = "Andrei Moiseev"
        nameLabel.font = UIFont.systemFont(ofSize: 35)
        view.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.top.equalToSuperview().inset(200)
        }
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Saint Petersburg, Russia"
        view.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { maker in
            maker.top.equalTo(nameLabel).inset(40)
            maker.centerX.equalToSuperview()
        }
        
        let siteButton = UIButton(type: .system)
        siteButton.backgroundColor = UIColor(red: 65/255, green: 44/255, blue: 132/255, alpha: 1)
        siteButton.layer.cornerRadius = 15
        view.addSubview(siteButton)
        siteButton.setTitle("moiseev.dev", for: .normal)
        siteButton.setTitleColor(.white, for: .normal)
        siteButton.setTitleColor(.red, for: .selected)
        siteButton.setTitleColor(.red, for: .highlighted)
        siteButton.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.top.equalTo(descriptionLabel).inset(50)
            maker.width.equalTo(150)
            maker.height.equalTo(35)
        }
        siteButton.addTarget(self, action: #selector(siteButtonTapped), for: .touchUpInside)
        
        let githubButton = UIButton(type: .system)
        githubButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        githubButton.layer.cornerRadius = 15
        view.addSubview(githubButton)
        githubButton.setTitle("GitHub", for: .normal)
        githubButton.setTitleColor(.white, for: .normal)
        githubButton.setTitleColor(.red, for: .highlighted)
        githubButton.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.top.equalTo(siteButton).inset(40)
            maker.width.equalTo(150)
            maker.height.equalTo(35)
        }
        githubButton.addTarget(self, action: #selector(githubButtonTapped), for: .touchUpInside)
        
    }
    

    @objc private func siteButtonTapped() {
        if let url = URL(string: "https://www.moiseev.dev") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @objc private func githubButtonTapped() {
        if let url = URL(string: "https://github.com/moiseevdev") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }

}




