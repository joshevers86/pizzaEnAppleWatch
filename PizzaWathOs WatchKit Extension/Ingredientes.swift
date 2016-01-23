//
//  Ingredientes.swift
//  PizzaWathOs
//
//  Created by Jose Navarro Alabarta on 15/1/16.
//  Copyright © 2016 ai2-upv. All rights reserved.
//

import WatchKit
import Foundation


class Ingredientes: WKInterfaceController {
    var ingredientes = ["Jamón", "Pepperoni", "Pavo","Salchicha","Aceituna","Cebolla","Pimiento","Piña","Anchoas","Alcaparras"]
    
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var olivas: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var pinya: WKInterfaceSwitch!
    @IBOutlet var anchoas: WKInterfaceSwitch!
    @IBOutlet var alcaparrras: WKInterfaceSwitch!
    

    var ingredientesSeleccionados : [String] = []
    var sel : String = ""

    var contador:Int = 0
    var queso:String = String()
    var tipo:String = String()
    var tamano:String = String()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        asignarNombreASwitch()
        let tq = context as! TQueso
        queso = String(tq.queso)
        tipo = String(tq.masa)
        tamano = String(tq.tamanyo)

    }
    

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func asignarNombreASwitch(){
        jamon.setTitle(ingredientes[0])
        pepperoni.setTitle(ingredientes[1])
        pavo.setTitle(ingredientes[2])
        salchicha.setTitle(ingredientes[3])
        olivas.setTitle(ingredientes[4])
        cebolla.setTitle(ingredientes[5])
        pimiento.setTitle(ingredientes[6])
        pinya.setTitle(ingredientes[7])
        anchoas.setTitle(ingredientes[8])
        alcaparrras.setTitle(ingredientes[9])
    }
    
    func imprimir(){
        for (var i = 0; i < ingredientesSeleccionados.count; i++) {
            print("\(ingredientesSeleccionados[i]) : \(contador)")
        }
    }
    
    @IBAction func seleccionarJamon(value: Bool) {
        if value {
            if contador < 5 {
                ingredientesSeleccionados.append(ingredientes[0])
                contador = contador + 1
                jamon.setOn(true)
            }else{
                jamon.setOn(false)
            }
        }else{
            if let index  = ingredientesSeleccionados.indexOf((ingredientes[0])) {
                ingredientesSeleccionados.removeAtIndex(index)
                contador = contador - 1
        }
        }
        imprimir()
    }
    
    @IBAction func seleccionarPeperoni(value: Bool) {
        if value {
            if contador < 5 {
                ingredientesSeleccionados.append(ingredientes[1])
                contador = contador + 1
                pepperoni.setOn(true)
            }else{
                pepperoni.setOn(false)
            }
        }else{
            if let index  = ingredientesSeleccionados.indexOf((ingredientes[1])) {
                ingredientesSeleccionados.removeAtIndex(index)
                contador = contador - 1
            }
        }
        imprimir()
    }
    
    @IBAction func seleccionarPavo(value: Bool) {
        if value {
            if contador < 5 {
                ingredientesSeleccionados.append(ingredientes[2])
                contador = contador + 1
                pavo.setOn(true)
            }else{
                pavo.setOn(false)
            }
        }else{
            if let index  = ingredientesSeleccionados.indexOf((ingredientes[2])){
                ingredientesSeleccionados.removeAtIndex(index)
                contador = contador - 1
            }
        }
        imprimir()
    }
    
    @IBAction func seleccionarSalchicha(value: Bool) {
        if value {
            if contador < 5 {
                ingredientesSeleccionados.append(ingredientes[3])
                contador = contador + 1
                salchicha.setOn(true)
            }else{
                salchicha.setOn(false)
            }
        }else{
            if let index  = ingredientesSeleccionados.indexOf((ingredientes[3])) {
                ingredientesSeleccionados.removeAtIndex(index)
                contador = contador - 1
            }
        }
        imprimir()
    }
    
    @IBAction func seleccionarOliva(value: Bool) {
        if value {
            if contador < 5 {
                ingredientesSeleccionados.append(ingredientes[4])
                contador = contador + 1
                olivas.setOn(true)
            }else{
                olivas.setOn(false)
            }
        }else{
            if let index  = ingredientesSeleccionados.indexOf((ingredientes[4])) {
                ingredientesSeleccionados.removeAtIndex(index)
                contador = contador - 1
            }
        }
        imprimir()
    }
    
    @IBAction func seleccionarCebolla(value: Bool) {
        if value {
            if contador < 5 {
                ingredientesSeleccionados.append(ingredientes[5])
                contador = contador + 1
                cebolla.setOn(true)
            }else{
                cebolla.setOn(false)
            }
        }else{
            if let index  = ingredientesSeleccionados.indexOf((ingredientes[5])) {
                ingredientesSeleccionados.removeAtIndex(index)
                contador = contador - 1
            }
        }
        imprimir()
    }
    
    @IBAction func seleccionarPimiento(value: Bool) {
        if value {
            if contador < 5 {
                ingredientesSeleccionados.append(ingredientes[6])
                contador = contador + 1
                pimiento.setOn(true)
            }else{
                pimiento.setOn(false)
            }
        }else{
            if let index  = ingredientesSeleccionados.indexOf((ingredientes[6])) {
                ingredientesSeleccionados.removeAtIndex(index)
                contador = contador - 1
            }
        }
        imprimir()
    }
    
    @IBAction func seleccionarPinya(value: Bool) {
        if value {
            if contador < 5 {
                ingredientesSeleccionados.append(ingredientes[7])
                contador = contador + 1
                pinya.setOn(true)
            }else{
                pinya.setOn(false)
            }
        }else{
            if let index  = ingredientesSeleccionados.indexOf((ingredientes[7])) {
                ingredientesSeleccionados.removeAtIndex(index)
                contador = contador - 1
            }
        }
        imprimir()
    }
    
    @IBAction func seleccionarAnchoa(value: Bool) {
        if value {
            if contador < 5 {
                ingredientesSeleccionados.append(ingredientes[8])
                contador = contador + 1
                anchoas.setOn(true)
            }else{
                anchoas.setOn(false)
            }
        }else{
            if let index  = ingredientesSeleccionados.indexOf((ingredientes[8])) {
            ingredientesSeleccionados.removeAtIndex(index)
            contador = contador - 1
            }
        }
        imprimir()
    }
    
    @IBAction func seleccionarAlcaparra(value: Bool) {
        if value {
            if contador < 5 {
                ingredientesSeleccionados.append(ingredientes[9])
                contador = contador + 1
                alcaparrras.setOn(true)
            }else{
                alcaparrras.setOn(false)
            }
        }else{
            if let index  = ingredientesSeleccionados.indexOf((ingredientes[9])) {
                ingredientesSeleccionados.removeAtIndex(index)
                contador = contador - 1
            }
        }
        imprimir()
    }
    
    @IBAction func seleccionarIngredientes() {
        let pasoVentana1 = TIngredientes(t: tamano, m: tipo, q: queso, s: ingredientesSeleccionados)
        pushControllerWithName("IDSeleccion", context: pasoVentana1)
    }
    
    
    
    
}
