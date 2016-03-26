//
//  VistaIngre.swift
//  CreaPizzaV3
//
//  Created by Eusebio Hernandez Mares on 14/03/16.
//  Copyright © 2016 Eusebio Hernandez Mares. All rights reserved.
//

import UIKit

class VistaIngre: UIViewController {
    var tamanoing:String = ""
    var masaing:String = ""
    var quesoing:String = ""
   var aux = [String]()
    var sw:Int = 0
    var contador:Int = 0
    var swtaming:Int = 0
    var swmaing:Int = 0
    var swqueing:Int = 0
    
    
    
    @IBOutlet weak var jamon: UISwitch!
    
    @IBOutlet weak var peperoni: UISwitch!
    
    @IBOutlet weak var pavo: UISwitch!
    
    @IBOutlet weak var salchicha: UISwitch!
    
    @IBOutlet weak var aceituna: UISwitch!
    
    @IBOutlet weak var cebolla: UISwitch!
    
    @IBOutlet weak var pimiento: UISwitch!
    
    @IBOutlet weak var pina: UISwitch!
    
    @IBOutlet weak var anchoa: UISwitch!
    
       override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigConf = segue.destinationViewController
            as! ViewConfirma
        var aux = [String]()
        aux = ingredientes()
        sigConf.tamanoconf = tamanoing
        sigConf.masaconf  = masaing
        sigConf.quesoconf = quesoing
        sigConf.ingreconf = aux
        sigConf.contconf  = contador
        sigConf.swtamconf = swtaming
        sigConf.swmaconf = swmaing
        sigConf.swqueconf = swqueing
          }
    
    @IBAction func ObtenIngredientes(sender: AnyObject){
        contador = 0
        
        ingredientes()
    }
        
    
        
    
   
    func ingredientes() ->Array<String> {
        var aux = [String]()
        contador = 0
        if jamon.on && contador < 6{
            aux.append("Jamon")
                    sw = 1
            contador = contador + 1
        }
        if peperoni.on && contador < 6{
            aux.append("Peperoni")
           
            sw = 1
            contador = contador + 1

        }
        if pavo.on && contador < 6{
            aux.append("Pavo")
            sw = 1
            contador = contador + 1

        }
        if salchicha.on && contador < 6{
            aux.append("Salchicha")
            sw = 1
            contador = contador + 1

        }
        if aceituna.on && contador < 6{
            aux.append("Aceituna")
            sw = 1
            contador = contador + 1

        }
        if cebolla.on && contador < 6{
            aux.append("Cebolla")
            sw = 1
            contador = contador + 1

        }
        if pimiento.on && contador < 6{
            aux.append("Pimiento")
            sw = 1
            contador = contador + 1

        }
        if pina.on && contador < 6{
            aux.append("Piña")
            sw = 1
            contador = contador + 1

        }
        if anchoa.on && contador < 6{
            aux.append("Anchoa")
            sw = 1
            contador = contador + 1

        }
        return aux
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




