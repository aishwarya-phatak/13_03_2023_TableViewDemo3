//
//  ViewController.swift
//  13_03_2023_TableViewDemo3
//
//  Created by Vishal Jagtap on 10/04/23.
//

import UIKit

class ViewController: UIViewController{
    
    var students : [String] = ["Prathamesh","Vaishanavi","Rutik","Tushar","Sachin","Yuvaraj"]
    
    @IBOutlet weak var studentListTableView: UITableView!
    var basicCell : UITableViewCell?

    override func viewDidLoad() {
        super.viewDidLoad()
        studentListTableView.dataSource = self
        studentListTableView.delegate = self
    }
}

//MARK : ViewController Conformed to UITableViewDataSource
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        basicCell = studentListTableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        
        basicCell?.textLabel?.text = "\(students[indexPath.row])" + "\(indexPath.section) -- \(indexPath.row)"
        if(indexPath.row % 2 == 0){
            basicCell?.backgroundColor = .lightGray
            basicCell?.textLabel?.textColor = .black
            basicCell?.textLabel?.textAlignment = .right
        } else {
            basicCell?.backgroundColor = .cyan
            basicCell?.textLabel?.textColor = .brown
            basicCell?.textLabel?.textAlignment = .center
        }
        return basicCell ?? UITableViewCell()
    }
}

//MARK : ViewController Conformed to UITableViewDelegate
extension ViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Student LIst - iOS"
    }
}
