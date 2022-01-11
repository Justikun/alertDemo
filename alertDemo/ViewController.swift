//
//  ViewController.swift
//  alertDemo
//
//  Created by Justin Lowry on 12/16/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        presentMyAlert()
    }


    
    func presentMyAlert() {
        let myAlert = UIAlertController(title: "Delete Note", message: "Deletion cannot be undone.", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("Cancel option selected")
        }
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { _ in
            print("Delete option selected")
        }
        
        let okayAction = UIAlertAction(title: "Okay", style: .default) { _ in
            print("Okay option selected")
        }
        
//        myAlert.addAction(deleteAction)
//        myAlert.addAction(cancelAction)
//        myAlert.addAction(okayAction)
        [cancelAction, deleteAction, okayAction].forEach{myAlert.addAction($0)}
    
        
        present(myAlert, animated: true, completion: nil)
    }
}
