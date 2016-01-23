//
//  Datos.swift
//  PizzaWathOs
//
//  Created by Jose Navarro Alabarta on 15/1/16.
//  Copyright © 2016 ai2-upv. All rights reserved.
//


import WatchKit

class TPizza: NSObject {
    
    var tamanyo:String = String()
    
    init(t:String) {
        self.tamanyo = t
    }
}

class TMasa: NSObject {
    
    var masa:String = String()
    var tamanyo:String = String()
    
    init(t:String, m:String) {
        self.tamanyo = t
        self.masa = m
    }
}


class TQueso: NSObject {
    
    var masa:String = String()
    var tamanyo:String = String()
    var queso:String = String()
    
    init(t:String, m:String,q:String) {
        self.tamanyo = t
        self.masa = m
        self.queso = q
    }
}



class TIngredientes: NSObject {
    
    var masa:String = String()
    var tamanyo:String = String()
    var queso:String = String()
    var seleccion:[String] = [String()]
    
    init(t:String, m:String,q:String,s:[String]) {
        self.tamanyo = t
        self.masa = m
        self.queso = q
        self.seleccion = s
    }
}

