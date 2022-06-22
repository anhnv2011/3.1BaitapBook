//
//  ShowViewController.swift
//  BaitapBook
//
//  Created by MAC on 6/21/22.
//

import UIKit

class ShowViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var tacgiaLabel: UILabel!
    @IBOutlet weak var giaLabel: UILabel!
    
//    var book = [Book]()
    var book:Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        nameLabel.text = book[0].name
//        tacgiaLabel.text = book[0].tacgia
//        giaLabel.text = String(book[0].price)
        nameLabel.text = book?.name
        tacgiaLabel.text = book?.tacgia
        giaLabel.text = String(book!.price)
        
    }

    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func editButton(_ sender: UIButton) {
        let editVC = EditViewController()
        editVC.book = book
        editVC.handlerBook = { result in
            self.nameLabel.text = result.name
            self.tacgiaLabel.text = result.tacgia
            self.giaLabel.text = String(result.price)
        }
            
       
        present(editVC, animated: true, completion: nil)
    }
    

}
