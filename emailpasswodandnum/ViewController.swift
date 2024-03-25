//
//  ViewController.swift
//  emailpasswodandnum
//
//  Created by apple on 8/22/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailid: UITextField!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var validnumber: UITextField!
    
    
   let valid = "smilesai1987@gmail.com"
   let num = "8438071387"
    let pass = "kuhaan"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageview.image = UIImage(named: "IMG1")
        
    }
    
    //general alert
    func showalret(title:String,message: String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle:UIAlertController.Style.alert)
        alert.addAction( UIAlertAction (title:"ok", style: UIAlertAction.Style.default, handler: nil) )
        self.present(alert, animated: true, completion: nil)
    }
    
    //number condition
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return string.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil && range.location < 10
    }
    
    //email codition
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    func validpassword(mypassword : String) -> Bool
        {

            let passwordreg =  ("(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z])(?=.*[@#$%^&*]).{8,}")
            let passwordtesting = NSPredicate(format: "SELF MATCHES %@", passwordreg)
            return passwordtesting.evaluate(with: mypassword)
        }
    
//button action
    @IBAction func clickbtn(_ sender: Any) {
         if (emailid.text?.isEmpty == true){
            showalret(title: "text", message:"pls enter the email id" )
        }
        else if (validnumber.text?.isEmpty == true){
            showalret(title: "text", message:"pls enter the phonenumber" )
        }
        else if (password.text?.isEmpty == true){
            showalret(title: "text", message:"pls enter the password" )
        }
        else if(valid != emailid.text){
            showalret(title: "id", message: "your mailid is incorrect")
                      }
        else if(num != validnumber.text){
            showalret(title: "id", message: "your number is incorrect")
                                }
        else if (pass != password.text){
            showalret(title: "id", message:"your password is incorrect" )
                       }
       
        else if(valid == emailid.text) && (num == validnumber.text!) && (pass == password.text)
            {
            self.performSegue(withIdentifier: "one", sender: nil)
    }
        
        
      }
        
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    let ob = segue.destination as! second
    
    
    ob.name = emailid.text!

}
}
