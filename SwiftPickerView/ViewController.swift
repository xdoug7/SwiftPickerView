//
//  ViewController.swift
//  SwiftPickerView
//
//  Created by Douglas Ferreira on 09/09/14.
//  Copyright (c) 2014 Douglas Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
   
    var titulosArray:NSArray = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.titulosArray = ["texto1", "texto2", "texto3", "texto4"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UIPickerViewDelegate

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        // Número total de componetes na picker view
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        // Número total de itens na picker view
        return self.titulosArray.count
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        // Título com a posição do array correspondente com a linha do picker
        return self.titulosArray[row] as NSString
    }
}

