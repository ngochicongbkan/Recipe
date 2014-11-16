//
//  Recipe.swift
//  Recipe
//
//  Created by CongCong on 11/14/14.
//  Copyright (c) 2014 CongCong. All rights reserved.
//

import UIKit

class Recipe: UITableViewController {
    let cellID = "#"
    var data = Array<This>()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Recipes"
        let button1 = UIButton(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        button1.setImage(UIImage(named: "search.png"), forState: UIControlState.Normal)
        let button2 = UIButton(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        button2.setImage(UIImage(named: "1.png"), forState: UIControlState.Normal)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button2)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button1)
        
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.8, green: 0.2, blue: 0.2, alpha: 1)
        

//        let nibCell = UINib(nibName: "CustomCell", bundle: nil)
//        self.tableView.registerNib(nibCell, forCellReuseIdentifier: cellID)
        self.tableView.registerClass(RecipeCell.self, forCellReuseIdentifier: cellID)
        initData()
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        }
    func initData() {
        data.append(This(imagePath1: "Candice Swanepoel01.jpg", imagePath2: "Candice Swanepoel02.jpg", imagePath3: "Candice Swanepoel03.jpg", imagePath4: "Candice Swanepoel04.jpg", imagePath5: "Candice Swanepoel05.jpg", imagePath6: "p1.jpeg", text1: "Candice Swanepoel", text2: "32"))
        data.append(This(imagePath1: "Lily Aldridge01.jpg", imagePath2: "Lily Aldridge02.jpg", imagePath3: "Lily Aldridge03.jpg", imagePath4: "Lily Aldridge04.jpg", imagePath5: "Lily Aldridge05.jpg", imagePath6: "p2.jpeg", text1: "Lily Aldridge", text2: "322"))
        data.append(This(imagePath1: "Lindsay Ellingson01.jpg", imagePath2: "Lindsay Ellingson01.jpg", imagePath3: "Lindsay Ellingson01.jpg", imagePath4: "Lindsay Ellingson01.jpg", imagePath5: "Lindsay Ellingson01.jpg", imagePath6: "p3.jpeg", text1: "Lindsay Ellingson", text2: "32323"))

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source



    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return data.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: RecipeCell!
        
        if let dequeCell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath) as? RecipeCell {
            cell = dequeCell
            /* } else {
            let topLevelObjects = NSBundle.mainBundle().loadNibNamed("CustomCell", owner: self, options: nil)
            cell = topLevelObjects[0] as CustomCell*/
        }

        let poster = data[indexPath.row]
        cell.image1.image = poster.imageCall1
        cell.image2.image = poster.imageCall2
        cell.image3.image = poster.imageCall3
        cell.image4.image = poster.imageCall4
        cell.image5.image = poster.imageCall5
        cell.profile.setImage(poster.imageCall6, forState: UIControlState.Normal)
        cell.label1.text = poster.text1
        cell.label2.text = poster.text2

        
        return cell
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 220
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
