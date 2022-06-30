//
//  NoteBookTableViewCell.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 30.06.2022.
//

import UIKit

class NoteBookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    @IBOutlet weak var nameUserLabel: UILabel!
    

    
    func configureCellWithConnection(userData: User) {
        thumbnailImageView.image = UIImage(named:userData.iconUser)
        nameUserLabel.text = "\(userData.userFirstName)"
    }
    
    func configureLocationRealm(userData: UserDataRealm?) {
        thumbnailImageView.image = UIImage(named:userData?.iconUser ?? "")
        nameUserLabel.text = "\((userData?.userFirstName) ?? "Имя")"
        
    }
}
