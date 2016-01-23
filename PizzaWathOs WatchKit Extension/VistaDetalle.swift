//
//  VistaDetalle.swift
//  PizzaWathOs
//
//  Created by Jose Navarro Alabarta on 15/1/16.
//  Copyright © 2016 ai2-upv. All rights reserved.
//

import WatchKit
import Foundation


class VistaDetalle: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        /*let tp = context as! TPizza
        let tm = context as! TMasa
        let tq = context as! TQueso
        let ti = context as! TIngredientes
        tp.tamanyo
        tm.masa
        tq.queso
        ti.ingredietes*/
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
