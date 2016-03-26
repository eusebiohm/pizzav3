//
//  VistaQueso.swift
//  CreaPizzaV3
//
//  Created by Eusebio Hernandez Mares on 14/03/16.
//  Copyright © 2016 Eusebio Hernandez Mares. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController {
    var tamanoq:String = ""
    var tipomasaq:String = ""
    var swtamq:Int = 0
    var swmaqu:Int = 0
//    var tipoqueso:String = "Chedda"
    
    @IBOutlet weak var mozarella: UISwitch!
    
    @IBOutlet weak var cheddar: UISwitch!
    
    @IBOutlet weak var parmesano: UISwitch!
    
    @IBOutlet weak var sinqueso: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sel1a5ingre(sender: AnyObject) {
        seltipoqueso()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigIngre = segue.destinationViewController
            as! VistaIngre
    let    (temp, sw3) = seltipoqueso()
        
        sigIngre.tamanoing = tamanoq
        sigIngre.masaing = tipomasaq
        sigIngre.quesoing = temp
        sigIngre.swtaming = swtamq
        sigIngre.swmaing = swmaqu
        sigIngre.swqueing = sw3
       }
    func seltipoqueso() ->(String, Int) {
        var tipoqueso:String = ""
        var swqueso:Int = 0
        if mozarella.on {
            tipoqueso = "Mozarella"}
        else if cheddar.on {
            tipoqueso = "Cheddar"
        }
        else if parmesano.on  {
            
            tipoqueso = "Parmesano"}
        else if sinqueso.on {
            tipoqueso = "Sin Queso"}
        else {
            swqueso = 1
            print(" no selecciono queso")
            tipoqueso = ("No Selecciono")
        }
        return (tipoqueso, swqueso)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
