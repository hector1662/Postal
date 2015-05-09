//
//  ViewController.swift
//  postal
//
//  Created by Héctor Márquez Aguilar on 07/05/15.
//  Copyright (c) 2015 Asesores en Tecnologías Mixtas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    //para crear la variable del texto del boton y cambiarlo en sendMailButtonPressed
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var messageLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender:
        //Hicimos commit en github a partir de aquí
        UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
            //etiqueta de nombre del que manda el mensaje
        messageLabel2.hidden = false
        messageLabel2.text = enterNameTextField.text
        messageLabel2.textColor = UIColor.blueColor()
        
        //hacer que el mensaje se vea en el label
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
            
        //hacer que el nombre entre en el label2
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder() //esto es para desaparecer el teclado
            
        //cambiar el nombe del boton
        mailButton.setTitle("Mensaje Enviado", forState: UIControlState.Normal)
    }

}

