//
//  EditViewController.swift
//  BaitapBook
//
//  Created by MAC on 6/21/22.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var tacgiaTextfield: UITextField!
    @IBOutlet weak var priceTextfield: UITextField!
    var book:Book?
    var handlerBook : ((Book) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextfield.text = book?.name
        tacgiaTextfield.text = book?.tacgia
        priceTextfield.text = String(book!.price)
        
       
    }


    @IBAction func editButton(_ sender: UIButton) {
        if let name = nameTextfield.text, name.isEmpty != true,
           let tacgia = tacgiaTextfield.text, tacgia.isEmpty != true,
           let price = priceTextfield.text, price.isEmpty != true {
            book = Book(name: name, tacgia: tacgia, price: Int(price)!)
            handlerBook!(book!)
        }
        dismiss(animated: true, completion: nil)
    }
    

}
