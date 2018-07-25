//
//  MainTableViewController.swift
//  bakj
//
//  Created by CAUAD10 on 2018. 7. 24..
//  Copyright © 2018년 CAUAD10. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    // 빈 어레이를 추가해서 초기화 해줘야 함.
    var names:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        names.append("홍길동")
        names.append("김민수")
        names.append("고준일")
        
    }
    
    class CellItem{
        var images:UIImage
        var title:String
        var desc:String
        
        init(images:UIImage, title:String, desc:String) {
            self.images = images
            self.title = title
            self.desc = desc
        }
    }
    
    var array = [CellItem(images: #imageLiteral(resourceName: "liver-2"), title: "title", desc: "description"), CellItem(images: #imageLiteral(resourceName: "liver-2"), title: "title1", desc: "description1"), CellItem(images: #imageLiteral(resourceName: "liver-2"), title: "title2", desc: "description2")]
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names.count
    }

// delegation pattern을 공부하자!
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
//        if let myCell = cell {
//            myCell.title.text = "아이콘"
//            myCell.desc.text = "샘플"
//
//            let img = UIImage(named: "iCon")
//            myCell.testImages.image = img
//
//            return myCell
//        }
        // Configure the cell...
        // 만약에 textLabel에 값이 있을 때 뒤에 코드를 실행하라는 optional chaining
//        cell? .textLabel?.text = array [indexPath.row].title
//        cell? .imageView?.image = array [indexPath.row].images
//        cell? .detailTextLabel?.text = array [indexPath.row].desc
//

        
        guard let myCell = cell as? MainTableViewCell else {
            return cell
        }
        myCell.title.text = "아이콘"
        myCell.desc.text = "샘플"
        
        let img = UIImage(named: "iCon")
        myCell.testImages.image = img
        return myCell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

import UIKit

class MainTableViewCell: UITableViewCell {
    
    @IBOutlet weak var testImages: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var desc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

