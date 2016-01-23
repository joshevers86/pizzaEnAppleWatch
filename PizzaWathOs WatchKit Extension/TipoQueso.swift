//
//  TipoQueso.swift
//  PizzaWathOs
//
//  Created by Jose Navarro Alabarta on 15/1/16.
//  Copyright © 2016 ai2-upv. All rights reserved.
//

import WatchKit
import Foundation


class TipoQueso: WKInterfaceController {


    
    @IBOutlet var picker: WKInterfacePicker!
    var tipoQueso = ["Mozzarella", "Cheddar", "Parmesano", "Sin queso"]
    var pickers : [WKPickerItem]! = []
    var valor:Int = 0
    var tamano:String = String()
    var tipo:String = String()
    var seleccion:String = String()
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        seleccion = ""
        
        // Configure interface objects here.
        let tm = context as! TMasa
        tamano = String(tm.tamanyo)
        tipo = String(tm.masa)
        //print(almacen)
        rellenarPicker()
        
    }
    func rellenarPicker(){
        for (var i = 0; i < tipoQueso.count ; i++){
            let valorPicker = WKPickerItem()
            valorPicker.title = tipoQueso[i]
            pickers.append(valorPicker)
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        picker.setItems(pickers)
        picker.setSelectedItemIndex(1)
        seleccion = ""
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        seleccion = ""
    }

    @IBAction func obtenerDatos(value: Int) {
        self.valor = value
        
    }

    @IBAction func seleccionarQueso() {
        seleccion = tipoQueso[self.valor]
        let pasoVentana1 = TQueso(t: tamano, m: tipo, q: seleccion)
        pushControllerWithName("IDIngredientes", context: pasoVentana1)
    }
}
