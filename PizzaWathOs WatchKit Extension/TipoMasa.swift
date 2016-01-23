//
//  TipoMasa.swift
//  PizzaWathOs
//
//  Created by Jose Navarro Alabarta on 16/1/16.
//  Copyright © 2016 ai2-upv. All rights reserved.
//

import WatchKit
import Foundation


class TipoMasa: WKInterfaceController {
    
    var tiposMasa : [String] = ["Delgada", "Crujiente", "Gruesa"]
    
    @IBOutlet var picker: WKInterfacePicker!
    var pickers : [WKPickerItem]! = []
    var valor:Int = 0
    var tamano:String = String()
    var tipo:String = String()
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let tp = context as! TPizza
        tamano = String(tp.tamanyo)
        tipo = ""
        //print(almacen)
        // Configure interface objects here.
        rellenarPicker()

    }
    func rellenarPicker(){
        for (var i = 0; i < tiposMasa.count ; i++){
            let valorPicker = WKPickerItem()
            valorPicker.title = tiposMasa[i]
            pickers.append(valorPicker)
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        tipo = ""
        picker.setItems(pickers)
        picker.setSelectedItemIndex(1)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        tipo=""
    }

    @IBAction func obtenerValores(value: Int) {
        self.valor = value
        //print(tiposMasa[value])
    }
    
    @IBAction func seleccionarMasa() {
        tipo = tiposMasa[self.valor]
        let pasoVentana1 = TMasa(t: tamano, m: tipo)
        pushControllerWithName("IDQuesos", context: pasoVentana1)
    }
}
