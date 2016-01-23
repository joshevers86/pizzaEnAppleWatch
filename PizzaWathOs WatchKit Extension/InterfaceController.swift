//
//  InterfaceController.swift
//  PizzaWathOs WatchKit Extension
//
//  Created by Jose Navarro Alabarta on 15/1/16.
//  Copyright © 2016 ai2-upv. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var tamanosPizza : [String] = ["Pequeña", "Mediana", "Grande"]
    var pickers : [WKPickerItem]! = []
    var valor:Int = 0
    var tamano: String = String()
    
    
    @IBOutlet var aaa: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        rellenarPicker()
        tamano = ""
        
    }
    
    func rellenarPicker(){
        for (var i = 0; i < tamanosPizza.count ; i++){
            let valorPicker = WKPickerItem()
            valorPicker.title = tamanosPizza[i]
            pickers.append(valorPicker)
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        aaa.setItems(pickers)
        aaa.setSelectedItemIndex(1)
        tamano = ""
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        tamano = ""
    }
    
    
    @IBAction func seleccionarTamano() {
        //print("\(tamanosPizza[self.valor])")
        tamano = tamanosPizza[self.valor]
        let pasoVentana1 = TPizza(t: tamano)
        pushControllerWithName("IDMasa", context: pasoVentana1)
        
    }
    @IBAction func obtenerValores(value: Int) {
        self.valor=value
        
    }
}
