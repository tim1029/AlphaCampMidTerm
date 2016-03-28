//
//  MovieTableViewController.swift
//  MidTerm
//
//  Created by MBPrDyson on 2016/3/28.
//  Copyright © 2016年 MBPrDyson. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var movieList = ["FirstName":"蝙蝠俠對超人：正義曙光", "FirstImage":"BatmanNSuperman", "FirstDispalyDate":"上映日期2016-03-25", "FirstDes":"本片為DC擴展宇宙的第二部作品，即是2013年《超人：鋼鐵英雄》的續集，以DC漫畫人物蝙蝠俠和超人為題材，耗資超過兩億五千萬元，影片多數場景以IMAX攝影機拍攝。 由《超人：鋼鐵英雄》查克史奈德執導，《控制》班艾佛列克飾演蝙蝠俠與布魯斯韋恩，《超人：鋼鐵英雄》亨利卡維爾飾演超人與克拉克肯特，《玩命關頭6》蓋兒賈多特飾演黛安娜普林斯和神力女超人，《瞞天大佈局》艾美亞當斯飾演超人的女友路意絲蓮恩，《里斯本夜車》傑瑞米艾朗飾演布魯斯韋恩的管家阿福，《寂寞公路》傑西艾森柏格則飾演超人永遠的宿敵：雷克斯路瑟。 由於超人大戰薩德將軍，使大都會市滿目瘡夷，蝙蝠俠決定重出江湖，穿上鋼鐵裝與超人一較高下。當雙方處於交戰狀態時，卻出現超級反派「雷克斯路瑟」使得城市出現新危機，蝙蝠俠和超人被迫合作除害。","SecondName":"功夫熊貓", "SecondImage":"Panda", "SecondDispalyDate":"上映日期2016-04-01", "SecondDes":"成為神龍大俠的阿波（傑克·布萊克飾），終於和失聯已久的父親老李（布萊恩·克萊斯頓飾）相聚，老李帶阿波回到住著許多熊貓的熊貓村，阿波終於知道他不是這個世界上唯一的一隻熊貓。但正當阿波開心地與族人相聚的同時，武功高強的大反派天煞（J.K.西蒙斯飾）卻在中國各地橫行，打算擊敗全中國的武林高手，稱霸天下。阿波為了保護族人和熊貓村的安全，他必須將這些圓滾滾又生性溫馴的熊貓們，訓練成一群「功夫熊貓」。同時亦會解畫爲何烏龜長老會選阿波為神龍大俠。"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.navigationItem.title = "本週新片"
        self.tableView.separatorColor = .orangeColor()
        self.tableView.separatorInset = UIEdgeInsetsZero

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let SVController = segue.destinationViewController as! SecondViewController
        
        let cellHeight = sender!.frame.height
        let touchY = sender!.frame.maxY
        let didSelectedIndex = Int(touchY/cellHeight)-1
        
        switch didSelectedIndex {
        case 0 :
            SVController.contentOfLabel = movieList["FirstDes"]!
            SVController.nameOfImage = movieList["FirstImage"]!
            SVController.contentOfTitle = movieList["FirstName"]!
        case 1 :
            SVController.contentOfLabel = movieList["SecondDes"]!
            SVController.nameOfImage = movieList["SecondImage"]!
            SVController.contentOfTitle = movieList["SecondName"]!
        default:
            break
        }
    }
    
    // MARK: - Table view data source

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let movieCell = tableView.dequeueReusableCellWithIdentifier("movieCell")! as! MyTableViewCell
        
        switch indexPath.section {
        case 0 :
            movieCell.cellImage.image = UIImage(named: movieList["FirstImage"]!)
            movieCell.cellLabelTittle.text = movieList["FirstName"]
            movieCell.cellLabelSubTittle.text = movieList["FirstDispalyDate"]
        case 1 :
            movieCell.cellImage.image = UIImage(named: movieList["SecondImage"]!)
            movieCell.cellLabelTittle.text = movieList["SecondName"]
            movieCell.cellLabelSubTittle.text = movieList["SecondDispalyDate"]
        default:
            break
        }
        
        return movieCell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
