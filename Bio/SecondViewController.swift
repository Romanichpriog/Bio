//
//  SecondViewController.swift
//  Bio
//
//  Created by Roman on 08.07.2020.
//  Copyright © 2020 Roman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var pageName:String?
    var info:String?

    @IBOutlet weak var information: UILabel!
    @IBOutlet weak var nameOfView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        guard let infor = info else { return }
        guard let nam = pageName else { return }
        information.text=info
        nameOfView.text=nam

        // Do any additional setup after loading the view.
    }
    

    let backgroundImageView = UIImageView()
    @IBAction func goBack(_ sender: Any) {
    }
    func setBackground() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "fon")
        view.sendSubviewToBack(backgroundImageView)
    }

}
