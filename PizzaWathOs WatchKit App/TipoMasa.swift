//
//  TipoMasa.swift
//  PizzaWathOs
//
//  Created by Jose Navarro Alabarta on 15/1/16.
//  Copyright © 2016 ai2-upv. All rights reserved.
//

import WatchKit
import Foundation


class TipoMasa: WKInterfaceController {
    
    var tiposMasa : [String] = ["Peqeña", "Mediana", "Grande"]/*
    let valoresPicker1 = WKPickerItem()
    let valoresPicker2 = WKPickerItem()
    let valoresPicker3 = WKPickerItem()*/
    
    @IBOutlet var picker: WKInterfacePicker!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        valoresPicker1.title = tiposMasa[0]
        valoresPicker2.title = tiposMasa[1]
        valoresPicker3.title = tiposMasa[2]
        let pi : [WKPickerItem]? = [valoresPicker1,valoresPicker2,valoresPicker3]
        //tamPizza.setItems(pi)
        picker.setItems(pi)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func introMasa(value: Float) {
        print(tiposMasa[value])
    }

}