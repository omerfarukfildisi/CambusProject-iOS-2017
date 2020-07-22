//
//  RegisterViewController.swift
//  Final Project - KamBüs
//
//  Created by Ömer Faruk Fildişi on 14.05.2018.
//  Copyright © 2018 Ömer Faruk Fildişi / Arda Zafer İbin. All rights reserved.
//

import UIKit
import CoreData
class RegisterViewController: UIViewController {

    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtsurname: UITextField!
    @IBOutlet weak var txtphone: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    @IBOutlet weak var txtpassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    @IBAction func btnregister(_ sender: UIButton) {
        let managedContext = appDelegate?.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Users", in: managedContext!)!
        let data = NSManagedObject(entity: entity, insertInto: managedContext)
        data.setValue(txtname.text, forKey: "name")
        data.setValue(txtsurname.text, forKey: "surname")
        data.setValue(txtphone.text, forKey: "phone")
        data.setValue(txtemail.text, forKey: "email")
        data.setValue(txtpassword.text, forKey: "password")
        
        do{
            try managedContext?.save()
            txtname.text = ""
            txtsurname.text = ""
            txtemail.text = ""
            txtphone.text = ""
            txtpassword.text = ""
            print( "sfdgds  ")
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
