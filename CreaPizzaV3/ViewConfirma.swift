//
//  ViewConfirma.swift
//  CreaPizzaV3
//
//  Created by Eusebio Hernandez Mares on 14/03/16.
//  Copyright © 2016 Eusebio Hernandez Mares. All rights reserved.
//

import UIKit

class ViewConfirma: UIViewController {
    var tamanoconf:String = ""
    var masaconf:String = ""
    var quesoconf:String = ""
    var ingreconf:Array<String> = [String]()
    var contconf:Int = 0
    var swtamconf:Int = 0
    var swmaconf:Int = 0
    var swqueconf:Int = 0
    @IBOutlet weak var ltamano: UILabel!
    
    @IBOutlet weak var lmasa: UILabel!
    @IBOutlet weak var lqueso: UILabel!
    
    @IBOutlet weak var ingrediente1: UILabel!
    
    @IBOutlet weak var ingrediente2: UILabel!
    
    @IBOutlet weak var ingrediente3: UILabel!
    
    @IBOutlet weak var ingrediente4: UILabel!
    
    @IBOutlet weak var ingrediente5: UILabel!
    override func viewWillAppear(animated: Bool) {
        ltamano.text = tamanoconf
        lmasa.text = masaconf
        lqueso.text = quesoconf
        if (contconf == 0) || (contconf > 5) {
        ingrediente1.text = " no selecciono"
            ingrediente2.text = ""
            ingrediente3.text = ""
            ingrediente4.text = ""
            ingrediente5.text = ""
       
        }
     else   if contconf  == 1{
            ingrediente1.text = ingreconf[ 0]
            ingrediente2.text = ""
            ingrediente3.text = ""
            ingrediente4.text = ""
            ingrediente5.text = ""
        }
        else if contconf == 2  {
            ingrediente1.text = ingreconf[0]
            ingrediente2.text = ingreconf[1]
            ingrediente3.text = ""
            ingrediente4.text = ""
            ingrediente5.text = ""

        }
        else if contconf == 3 {
              ingrediente1.text = ingreconf[0]
              ingrediente2.text = ingreconf[1]
            ingrediente3.text = ingreconf[2]
            ingrediente4.text = ""
            ingrediente5.text = ""
        }
        else if contconf == 4 {
            ingrediente1.text = ingreconf[0]
            ingrediente2.text = ingreconf[1]
            ingrediente3.text = ingreconf[2]
             ingrediente4.text = ingreconf[3]
            ingrediente5.text = ""
        }
        else if contconf == 5 {
            ingrediente1.text = ingreconf[0]
            ingrediente2.text = ingreconf[1]
            ingrediente3.text = ingreconf[2]
            ingrediente4.text = ingreconf[3]
            ingrediente5.text = ingreconf[4]

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showMessage() {
        if contconf == 0 || swtamconf == 1 || swmaconf == 1 || swqueconf == 1{
        print("Boton Ordena")
        
            let alerta = UIAlertController(title: "NO SELECCIONO INGREDIENTES", message:" corrige con fecha back ", preferredStyle: UIAlertControllerStyle.Alert)
            alerta.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alerta, animated: true,completion: nil)}
        else {
            let alerta = UIAlertController(title: "Felicidades Se Atiende Orden", message:" Despues de 30 min es Gratis ", preferredStyle: UIAlertControllerStyle.Alert)
            alerta.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alerta, animated: true,completion: nil)
        }
        }
}

    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
