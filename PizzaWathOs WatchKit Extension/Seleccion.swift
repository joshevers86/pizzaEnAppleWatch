//
//  Seleccion.swift
//  PizzaWathOs
//
//  Created by Jose Navarro Alabarta on 15/1/16.
//  Copyright © 2016 ai2-upv. All rights reserved.
//

import WatchKit
import Foundation


class Seleccion: WKInterfaceController {

    @IBOutlet var mostarTamano: WKInterfaceLabel!
    @IBOutlet var mostrarMasa: WKInterfaceLabel!
    @IBOutlet var mostrarQueso: WKInterfaceLabel!
    @IBOutlet var mostrarIngredientes: WKInterfaceLabel!
    @IBOutlet var bConfirmacion: WKInterfaceButton!
    var ingred: String = String()
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        
        let ti = context as! TIngredientes
        //self.mostarTamano.setText( String(tp.tamanyo) )
        //self.mostrarMasa.setText( String(tm.masa) )
        //self.mostrarQueso.setText( String(tq.queso) )
        //tm.masa
        //tq.queso
        self.mostarTamano.setText(String(ti.tamanyo))
        self.mostrarMasa.setText(String(ti.masa))
        self.mostrarQueso.setText(String(ti.queso))
        if ti.seleccion.count == 0 {
            self.mostrarIngredientes.setText(String("Selecciona algún \ningrediente"))
            bConfirmacion.setEnabled(false)
        }
        if ti.seleccion.count > 0 {
            for ll in ti.seleccion {
                ingred = ingred + String(ll) + "\n"
            }
            self.mostrarIngredientes.setText(ingred)
            bConfirmacion.setEnabled(true)
        }
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
