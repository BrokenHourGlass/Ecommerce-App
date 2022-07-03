//
//  ViewController.swift
//  ecommerce
//
//  Created by admin on 6/27/22.
//

import UIKit
import CoreData
class LoginViewController: UIViewController, UITextFieldDelegate {
   
    
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    func allFieldsFilledOut() -> Bool {
        if(userNameTextField.text != "" && passwordTextField.text != ""){
            return true
        }else{
            return false
        }
    }

    @IBAction func tabClick(_ sender: Any) {
        passStack.isHidden = false
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
        userNameTextField.delegate = self
        
    
        passStack.isHidden = true
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
               mainStack.addGestureRecognizer(tapGesture)
        
             }
        @objc func handleTap(sender: UITapGestureRecognizer) {
            if passStack.isHidden == false{
               print("true")
               passStack.isHidden = true}
            else{
               print("false")
                passStack.isHidden = false
                
            }
          }
    
    @IBOutlet weak var mainStack: UIStackView!
    
    @IBOutlet weak var userStack: UIStackView!
    @IBOutlet weak var passStack: UIStackView!
    @IBOutlet var gestureRec: UITapGestureRecognizer!
    
    @IBOutlet var ViewTap: UIView!
    
    //func
    

    //sign in errors in red text below textfield
    @IBOutlet weak var userDNE: UILabel!
    @IBOutlet weak var passwordIncorrect: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    //textfield error logic
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        
        switch textField{
        case userNameTextField:
            if(userNameTextField.text == ""){
                userDNE.isHidden = false
            }else
            {
                userDNE.isHidden = true
            }
      
        case passwordTextField:
            if(passwordTextField.text != ""){
                
                passwordIncorrect.isHidden = true
            }else
            {
                passwordIncorrect.isHidden = false
            }
        
            
        default:
            break
        }
    }
    
    

    @IBAction func NewAccount(_ sender: Any) {
    }
    @IBAction func enterGuest(_ sender: Any) {
    }
    @IBAction func loginButton(_ sender: Any) {
    
        
    
    }
}
