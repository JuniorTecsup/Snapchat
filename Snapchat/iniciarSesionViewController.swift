//
//  iniciarSesionViewController.swift
//  Snapchat
//
//  Created by mbtec22 on 7/8/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//

import UIKit
import Firebase

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion:{ (user, error)in
        print("Iintentamos Iniciar Sesión")
            if(error != nil){
            print("Tenemos el diguiente Error:\(error)")
            }else{
                print("Inicio de Sesion Exitoso")
            }
        })
    }
}

