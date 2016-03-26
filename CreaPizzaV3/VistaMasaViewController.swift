//
//  VistaMasaViewController.swift
//  CreaPizzaV3
//
//  Created by Eusebio Hernandez Mares on 14/03/16.
//  Copyright © 2016 Eusebio Hernandez Mares. All rights reserved.
//

import UIKit

class VistaMasaViewController: UIViewController {
    var mtamano:String = ""
    var swtama:Int = 0
    
//    var masatipo:String = "Delgada"
    
    @IBOutlet weak var delgada: UISwitch!
    
    @IBOutlet weak var gruesa: UISwitch!
    
    @IBOutlet weak var crujiente: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func seltipoqueso(sender: AnyObject) {
        tipomasa()
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigQueso = segue.destinationViewController
            as! VistaQueso
        let (masa, sw2) = tipomasa()
        sigQueso.tamanoq = mtamano
        sigQueso.tipomasaq = masa
        sigQueso.swtamq = swtama
        sigQueso.swmaqu = sw2
       
    }
    func tipomasa() ->(String, Int) {
        var masatipo:String = ""
        var swvima:Int = 0

        if delgada.on {
            masatipo = "Delgada"}
        else if gruesa.on {
            masatipo = "Gruesa"
        }
        else if crujiente.on  {
            
            masatipo = "Crujiente"}
        else {
            masatipo = "no seleccion masa"
            swvima = 1
        }
        return (masatipo, swvima)
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
