//
//  DetailViewController.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 29.06.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var userPhoto: UIImageView!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var secondNameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var timeZoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    
    var userModel: User?
    override func viewDidLoad() {
        super.viewDidLoad()
      refreshView()
    }
    private func refreshView() {
        userPhoto.image = UIImage(named: (userModel?.userPhoto ?? "rita"))
        firstNameLabel.text = "\((userModel?.userFirstName) ?? "Имя")"
        secondNameLabel.text = "\((userModel?.userSecondName) ?? "Фамилия")"
        dateLabel.text = "\((userModel?.date) ?? "02.07.1999")"
        timeZoneLabel.text = "\((userModel?.timeZone) ?? "+5")"
        emailLabel.text = "\((userModel?.email) ?? "swix456@hmail.com")"
 
    }
    

}
