//

//
// Created by Chang Sophia on 11/26/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit
class RoleTableViewController: UITableViewController {
   
 
   
    var names = ["AntMan", "BlackPanther", "BlackWidow", "Captain","CaptainMarvel", "Drax","Dr.Stranger","Gamora","Hawkeye","Hulk","IronMan","Loki","Mantis","NickFury","Okoye","Pepper","Rocket","ScarletWitch","Thor","Valkyrie", "WinterSoldier", "Wong","Groot","Wasp", "Nebula", "Hogan", "Shuri", "Falcon","Vison", "Rhodes", "Star-Lord", "Spiderman"]
    
    var postShown = [Bool](repeating: false, count: 32)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 266.0
        tableView.rowHeight = UITableView.automaticDimension
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .automatic
        
        
     
        
    }
    
    //UITableViewDelegate Methods
    override func tableView(_ talbeView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath){
        
        if postShown[indexPath.row] {
            return
        }
        //已display的不重覆
        postShown[indexPath.row] = true
        
        //旋轉特效
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 50, 0)
        cell.layer.transform = rotationTransform
        //動畫結束之後
        UIView.animate(withDuration: 1.0, animations: { cell.layer.transform = CATransform3DIdentity})
    }

    
   
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "roleCell", for: indexPath) as! RoleTableViewCell
        cell.nameLabel.text =  names[(indexPath as NSIndexPath as NSIndexPath).row]
        cell.avgImageView.image = UIImage(named: names[(indexPath as NSIndexPath).row])
       
        return cell
        }
    
    //delete
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        names.remove(at: indexPath.row)
        tableView.reloadData()
        
    }
    
}

