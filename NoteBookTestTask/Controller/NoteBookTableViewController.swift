//
//  NoteBookTableViewController.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 29.06.2022.
//

import UIKit
import RealmSwift

class NoteBookTableViewController: UITableViewController {
    var userArray = ["Александр", "Маргарита","Михаил","Валентин","Мария","Олег","Ксения","Юлия","Ульяна", "Василий"]
    
    //MARK: Инициализируем локальную БД
    //    private let localRealm = try? Realm()
    //    private var usersArrayRealm: Results<UserDataRealm>!
    //MARK: Создаем массив юзеров
    //Создаем массив юзеров
    private var usersArray = [User]()
    let user = User()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // usersArrayRealm = localRealm?.objects(UserDataRealm.self)
    
        usersArray.append(user)
        if usersArray.isEmpty {
            usersArray = Array(repeating: user, count: usersArray.count)
        }
        setupData()
//        usersArray.removeLast()
        print(usersArray.count)
        
        
    }
   
    private func setupData() {
        for _ in 0...100 {
            getUserData { user in
                self.usersArray.insert(user, at: 0)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
        
    }
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return userArray.count
        if usersArray.isEmpty { //если массив из структур пустой, тогда у нас загружаются данные из лок БД
            return userArray.count
        } else {
            return usersArray.count
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! NoteBookTableViewCell
        //         let model = usersArrayRealm[indexPath.row]
        //        cell.configureLocationRealm(userData: model)
        let model = usersArray[indexPath.row]
        cell.configureCellWithConnection(userData: model)
        return cell
    }
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    //MARK: - удаление  пользователей
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    //MARK: - Navigation
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "showDetail" {
    //            guard let indexPath = tableView.indexPathForSelectedRow else { return }
    //            guard let detailVC = segue.destination as? DetailViewController else { return }
    //
    //
    //
    //
    //
    //
    //
    //
    //            ////            if isFiltering {
    //            ////                let filter = filtredCityArray[indexPath.row]
    //            //                let destinationVC = segue.destination as! DetailViewController //переход назанчаения DetailViewController
    //            ////                destinationVC.weatherModel = filter
    //            //            } else {
    //            //            let cityWeather = citiesArray[indexPath.row]
    //            //            let destinationVC = segue.destination as! DetailViewController //переход назанчаения DetailViewController
    //            //            destinationVC.weatherModel = cityWeather
    //            //        }
    //        }
    //    }
}
