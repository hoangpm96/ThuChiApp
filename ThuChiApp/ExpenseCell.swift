//
//  ExpenseCell.swift
//  ThuChiApp
//
//  Created by HoangPhan on 2/21/17.
//  Copyright © 2017 HoangPhan. All rights reserved.
//

import UIKit

class ExpenseCell: UITableViewCell {

    @IBOutlet weak var categorylbl: UILabel!
    @IBOutlet weak var detaillbl: UILabel!
    @IBOutlet weak var moneylbl: UILabel!
    @IBOutlet weak var bankAccountlbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateCell(cell : Expense){
    categorylbl.text = cell.category
        moneylbl.text = "\(cell.money)"
        bankAccountlbl.text = cell.bankAccount
        detaillbl.text = cell.detail
    }

}
