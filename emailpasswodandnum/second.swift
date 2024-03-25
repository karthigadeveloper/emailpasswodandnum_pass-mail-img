//
//  second.swift
//  emailpasswodandnum
//
//  Created by Karthiga on 8/23/23.
//

import UIKit

class second: UIViewController{
    
    @IBOutlet weak var table: UITableView!
  
    let friends = ["karthiga","Papa","sri","priya","sai"]
    let img = [UIImage(named: "Image1"),
               UIImage(named: "Image2"),
               UIImage(named: "Image3"),
               UIImage(named: "Image4"),
               UIImage(named: "Image5")]
var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        
        table.delegate = self
      table.dataSource = self
    }
    }
    
    extension second: UITableViewDataSource, UITableViewDelegate {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 250
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "two") as! cell
      //  let friend = friends[indexPath.row]
        cell.avatar.image = img[indexPath.row]
        
      //  cell.lbl2.text = friends[indexPath.row]
        cell.lbl.text = name
        return cell
    }
   
    
    }
    

