//
//  ViewController.swift
//  CreaPizzaV3
//
//  Created by Eusebio Hernandez Mares on 14/03/16.
//  Copyright © 2016 Eusebio Hernandez Mares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var chica: UISwitch!
    
    @IBOutlet weak var mediana: UISwitch!
    
    @IBOutlet weak var grande: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func seltipomasa(sender: AnyObject) {
        seleccionatam()
        
            }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let (tama, sw1) = seleccionatam()

        let sigMasa = segue.destinationViewController
            as! VistaMasaViewController
        sigMasa.mtamano = tama
     sigMasa.swtama = sw1
       
    }
    func seleccionatam() -> (String, Int) {
        
        var swtam:Int = 0

        var tamano:String = ""
  
        if chica.on {
            tamano = "Chica"}
        else if mediana.on {
            tamano = "Mediana"
        }
        else if grande.on  {
            
        tamano = "Grande"}
        else {
       tamano = "no seleccion tam"
            swtam = 1
        }
     return (tamano, swtam)
    }
    
}

