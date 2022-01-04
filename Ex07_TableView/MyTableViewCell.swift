//
//  MyTableViewCell.swift
//  Ex07_TableView
//
//  Created by 송윤근 on 2022/01/04.
//


//table view cell에 identifier을 정해줘야한다.
//그래야 코드에서 사용이 가능하다.
//attribute inspecter에서 해야함 꼭!(오른쪽 세번째)
//
import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var Idolimgview: UIImageView!
    
    @IBOutlet weak var idolnamelable: UILabel!
    @IBOutlet weak var artlable: UILabel!
    
    
    
}
