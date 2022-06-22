//
//  BookViewController.swift
//  BaitapBook
//
//  Created by MAC on 6/21/22.
//

import UIKit

class BookViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var tacgiaTextfield: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func nhapAction(_ sender: UIButton) {
        
        let hienthi = ShowViewController()
        if let name = nameTextField.text, name.isEmpty != true,
           let tacgia = tacgiaTextfield.text, tacgia.isEmpty != true,
           let price = priceTextField.text, price.isEmpty != true
        
        {
            
//            hienthi.book.append(Book(name: name, tacgia: tacgia, price: Int(price)!))
            hienthi.book = (Book(name: name, tacgia: tacgia, price: Int(price)!))
            present(hienthi, animated: true, completion: nil)
        }
        else {
            let aleartVC = UIAlertController(title: "Error", message: "Moi nhap du du lieu", preferredStyle: .alert)
            let okAleart = UIAlertAction(title: "Ok", style: .default, handler: nil)
            let cancelAlerat = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
            aleartVC.addAction(okAleart)
            aleartVC.addAction(cancelAlerat)
            present(aleartVC, animated: true, completion: nil)
            
        }
       
        
    }
    
}
