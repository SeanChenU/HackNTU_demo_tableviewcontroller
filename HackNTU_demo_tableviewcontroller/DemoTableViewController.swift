//
//  DemoTableViewController.swift
//  HackNTU_demo_tableviewcontroller
//
//  Created by SEAN HD on 2016/11/16.
//  Copyright © 2016年 Appar. All rights reserved.
//

import UIKit

class DemoTableViewController: UITableViewController {
    
    // Reuse identifier
    let reuseIdentifier = "feed.reuse"
    
    // Data here
    let profiles = ["1", "2", "3"]
    let names = ["Yandy Kado", "Sandi Torso", "Tycon Bennett"]
    let txts = [
        "資深媒體人李艷秋也曾表示，「川普與郭台銘的共同之處，就是兩人同樣具備有錢、有能、有膽識、有俠氣等令人期待的特質。」鴻海知情人士也透露，「總裁一直對於政府政策不甚滿意，對於台灣的競爭力、前景感到很焦慮。Terry（郭台銘）想要參選大家也都樂觀其成，又不免既期待又怕受傷害。」",
                "竞选时期表现亲俄的川普当选后，普京周一与川普通话。根据克里姆林宫发佈的声明，普京再次祝贺川普当选总统，並表示俄罗斯准备好基於平等、相互尊重和互不干涉內政原则，与美国新政府建立「伙伴对话」。声明说，普京和川普都认为，俄美关係目前发展不令人满意，希望为推动双边关係正常化积极合作，推动双方就最广泛问题进行建设性互动。两人还指出发展经贸关係以及合力打击国际恐怖主义和极端主义的重要性，並討论了解决敘利亚危机相关问题。", "PhotoScan基本上運用機器學習方式，讓系統能自動分析翻拍照片最佳調整位置、角度，並且去除眩光等情況，讓使用者能簡單透過手機鏡頭即可將過往沖洗照片「掃描」為數位檔案，並且上傳至Google Photos備存。此款App將率先於Android平台推出，之後也會推出iOS平台版本。"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }

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
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier, for: indexPath) as! FeedTableViewCell

        // Configure the cell...
        cell.profileImageView.image = UIImage(named: profiles[indexPath.row])
        cell.nameLabel.text = names[indexPath.row]
        cell.textView.text = txts[indexPath.row]

        return cell
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
