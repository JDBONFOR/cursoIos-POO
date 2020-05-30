//
//  ViewController.swift
//  poo
//
//  Created by Juan Bonforti on 25/05/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlet - Trata a elementos como propiedades
    @IBOutlet weak var labelTitle: UILabel!

    // Ponemos el tipo de la clase y el ? optional, para q arranque con nil, y que se inicie solo en el createObjMazda
    var objetoMazda3Mini:Mazda3Mini?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTitle.text = "Fábrica de Automóviles";
        
        print("Se activo la func viewDidLoad")
    }
    // Funciones de ciclo de vida del ViewController
    override func loadView(){
        super.loadView()
        print("La funcion loadView fue activada");
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("La funcion viewWillAppear fue activada");
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("La funcion viewDidAppear fue activada");
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("La funcion viewWillDisappear fue activada");
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("La funcion viewDidDisappear fue activada");
    }
    // Funcion encargada para el manejo de memoria.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("La funcion didReceiveMemoryWarning fue activada");
    }
    
    

    // IBAction - Controlar acciones, ejemplo de botones.
    @IBAction func createObjMazda(_ sender: UIButton) {
        print("La funcion de crear Mazda fue activada");
        
        // Instancio (creo) el objeto para consumirlo en las demas funciones.
        objetoMazda3Mini = Mazda3Mini()
        
    }
    
    @IBAction func viewPropsMazda(_ sender: UIButton) {
        print("La funcion de ver propiedades Mazda fue activada");
        
        guard objetoMazda3Mini != nil else {
            return
        }

        print("El auto Mazda3 es de tamaño \(objetoMazda3Mini!.tamano), tiene \(objetoMazda3Mini!.numeroPuertas) puertas, su color es \(objetoMazda3Mini!.color) y su precio es de \(objetoMazda3Mini!.precio) y su porcentaje de carga es \(objetoMazda3Mini!.porcentajeCarga)")
        
    }
    
    @IBAction func turnOnMazda(_ sender: UIButton) {
        guard objetoMazda3Mini != nil else {
            return
        }
        objetoMazda3Mini!.turnOn()
    }
        
    @IBAction func acelerateMazda(_ sender: UIButton) {
        guard objetoMazda3Mini != nil else {
            return
        }
        objetoMazda3Mini!.acelerate()
    }
        
    @IBAction func chargeMazda(_ sender: UIButton) {
        guard objetoMazda3Mini != nil else {
            return
        }
        objetoMazda3Mini!.chargeBattery()
    }
    
    
    
    
    
    
    
}

