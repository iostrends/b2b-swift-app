//
//  LineItemCell.swift
//  PureCodeUI
//
//  Created by 张喜来 on 7/16/16.
//  Copyright © 2016 张喜来. All rights reserved.
//

import UIKit

class UpdatableCell: UITableViewCell{

    func updateWithData(object: Any){
        
        
    
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        //idLabel.frame = CGRectMake(50, 150, 200, 21)
        
        
        
        
    }
    
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}


class LineItemListCell: UpdatableCell{
    
    
    
    
    var  idLabel : UILabel!
    var  thumbImage: UIImage!
    
    var  nameLabel : UILabel!
    
    var  qtyLabel : UILabel!
    var  amountLabel : UILabel!
    
    
    
    
    override func updateWithData(object: Any)
    {
        guard let lineItem = object as? LineItem else{
        
            NSLog("Error when trying to convert to a LineItem instance")
            
            return
        }
        
        idLabel.text = lineItem.id!
        nameLabel.text = lineItem.skuName!
        qtyLabel.text = "QTY: \(lineItem.quantity!)"
        amountLabel.text = "AMT: \(lineItem.amount!)"
        
    }
    
    
    
    func log(message:String)
    {
        //if true {return}
        NSLog(message)
        
    }
    

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        //With code, this method will be called
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        idLabel = UILabel(frame: CGRectMake(10, 10, 120, 40))
        idLabel!.textColor = UIColor.brownColor()
        
        //idLabel.add
       
        //idLabel!.font = //set font here
        
        addSubview(idLabel)
        
        
        nameLabel = UILabel(frame: CGRectMake(100, 10, 120, 40))
        nameLabel!.textColor = UIColor.redColor()
        
        addSubview(nameLabel)
        
        
        qtyLabel = UILabel(frame: CGRectMake(230, 10, 60, 40))
        qtyLabel!.textColor = UIColor.brownColor()
        
        
        //idLabel!.font = //set font here
        
        addSubview(qtyLabel)
        
        
        amountLabel = UILabel(frame: CGRectMake(10, 50, 100, 40))
        amountLabel!.textColor = UIColor.brownColor()
        
        
        //idLabel!.font = //set font here
        
        addSubview(amountLabel)
        
        
        
        //log("method called")
    }
    


}


/*
 
 {
 "amount": 0.72,
 "id": "SG000004",
 "name": "shipping to this address4903",
 "version": 1
 }
 
 
 */

class ShippingGroupListCell: UpdatableCell {
    
    
    
    
    var  idLabel : UILabel!
    var  thumbImage: UIImage!
    
    var  nameLabel : UILabel!
    
    var  qtyLabel : UILabel!
    var  amountLabel : UILabel!
    
    
    
    func log(message:String)
    {
        //if true {return}
        NSLog(message)
        
    }
    
    
    override func updateWithData(object: Any)
    {
        guard let shippingGroup = object as? ShippingGroup else{
            
            NSLog("Error when trying to convert to a ShippingGroup instance")
            
            return
        }
        
        idLabel.text = shippingGroup.id!
        nameLabel.text = shippingGroup.name!
        amountLabel.text = "AMT: \(shippingGroup.amount!)"
       
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        //With code, this method will be called
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        idLabel = UILabel(frame: CGRectMake(10, 10, 120, 40))
        idLabel!.textColor = UIColor.brownColor()
        
        //idLabel.add
        
        //idLabel!.font = //set font here
        
        addSubview(idLabel)
        
        
        nameLabel = UILabel(frame: CGRectMake(100, 10, 120, 40))
        nameLabel!.textColor = UIColor.redColor()
        
        addSubview(nameLabel)
        
        
        qtyLabel = UILabel(frame: CGRectMake(230, 10, 60, 40))
        qtyLabel!.textColor = UIColor.brownColor()
        
        
        //idLabel!.font = //set font here
        
        addSubview(qtyLabel)
        
        amountLabel = UILabel(frame: CGRectMake(10, 50, 100, 40))
        amountLabel!.textColor = UIColor.brownColor()
        
        
        //idLabel!.font = //set font here
        
        addSubview(amountLabel)
        
        //log("method called")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        //idLabel.frame = CGRectMake(50, 150, 200, 21)
        
        
        
        
    }
    
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

/*
 
 {
 "cardNumber": "4111 1111 1111 - 4935",
 "id": "PG000008",
 "name": "visa card ending - 4934",
 "version": 1
 }
 
 
 */

class PaymentGroupListCell: UpdatableCell {
    
    
    
    
    var  idLabel : UILabel!
    var  thumbImage: UIImage!
    
    var  nameLabel : UILabel!
    
    var  cardNumberLabel : UILabel!
    var  amountLabel : UILabel!
    
    
    
    func log(message:String)
    {
        //if true {return}
        NSLog(message)
        
    }
    
    
    override func updateWithData(object: Any)
    {
        guard let paymentGroup = object as? PaymentGroup else{
            
            NSLog("Error when trying to convert to a ShippingGroup instance")
            
            return
        }
        
        idLabel.text = paymentGroup.id!
        nameLabel.text = paymentGroup.name!
        cardNumberLabel.text = paymentGroup.cardNumber
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        //With code, this method will be called
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        idLabel = UILabel(frame: CGRectMake(10, 10, 120, 40))
        idLabel!.textColor = UIColor.brownColor()
        
        //idLabel.add
        
        //idLabel!.font = //set font here
        
        addSubview(idLabel)
        
        
        nameLabel = UILabel(frame: CGRectMake(100, 10, 120, 40))
        nameLabel!.textColor = UIColor.redColor()
        
        addSubview(nameLabel)
        
        
        cardNumberLabel = UILabel(frame: CGRectMake(10, 50, 260, 40))
        cardNumberLabel!.textColor = UIColor.brownColor()
        
        
        //idLabel!.font = //set font here
        
        addSubview(cardNumberLabel)
        
        
        
        //log("method called")
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        //idLabel.frame = CGRectMake(50, 150, 200, 21)
        
        
        
        
    }
    
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}




class OrderCell: UpdatableCell {
    
    
    
    
    var  idLabel : UILabel!
    var  thumbImage: UIImage!
    
    var  titleLabel : UILabel!
    
    var  qtyLabel : UILabel!
    var  amountLabel : UILabel!
    
    
    
    func log(message:String)
    {
        //if true {return}
        NSLog(message)
        
    }
    
    override func updateWithData(object: Any)
    {
        guard let order = object as? Order else{
            
            NSLog("Error when trying to convert to a ShippingGroup instance")
            
            return
        }
        
        idLabel.text = order.id!
        titleLabel.text=order.title!
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        //With code, this method will be called
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        idLabel = UILabel(frame: CGRectMake(10, 10, 120, 40))
        idLabel!.textColor = UIColor.redColor()
        
        //idLabel.add
        
        //idLabel!.font = //set font here
        
        addSubview(idLabel)
        
        
        titleLabel = UILabel(frame: CGRectMake(100, 10, 220, 40))
        titleLabel!.textColor = UIColor.redColor()
        
        addSubview(titleLabel)
        
        
        qtyLabel = UILabel(frame: CGRectMake(230, 10, 60, 40))
        qtyLabel!.textColor = UIColor.brownColor()
        
        
        //idLabel!.font = //set font here
        
        addSubview(qtyLabel)
        
        amountLabel = UILabel(frame: CGRectMake(10, 50, 100, 40))
        amountLabel!.textColor = UIColor.brownColor()
        
        
        //idLabel!.font = //set font here
        
        addSubview(amountLabel)

        
        //log("method called")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        //idLabel.frame = CGRectMake(50, 150, 200, 21)
        
        
        
        
    }
    
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}


