//
//  ViewController.swift
//  Bio
//
//  Created by Roman on 07.07.2020.
//  Copyright © 2020 Roman. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="se1"{
        guard let dvc = segue.destination as? SecondViewController else { return }
            dvc.info = "Учусь в 10 инженерном классе. Изучал java для андроид разработки. Пол года занимался разработкой игор в Unity"
            dvc.pageName = "About me"
        }
        if segue.identifier=="se2"{
        guard let dvc = segue.destination as? SecondViewController else { return }
            dvc.info = "Coming soon..."
            dvc.pageName = "Законченные проекты"
        }
        if segue.identifier=="se3"{
        guard let dvc = segue.destination as? SecondViewController else { return }
            dvc.info = """
            симулятор пожарника(игра где надо спасти человека из горящего здания) Unity
            егатор(приложения где для решение вариантов ЕГЭ) Java
            serva4ok(rest ip отправляющие задания) Spring
            """
            dvc.pageName = "В процессе"
        }
        if segue.identifier=="se4"{
        guard let dvc = segue.destination as? SecondViewController else { return }
            dvc.info = "Создать приложение которое бы помогало людям выполнять все предписания врача. Например напоминать о приеме лекарств и помгоать соблюдать последовательность приема"
            dvc.pageName = "Идеи"}

        
        

        
    }
    
    
    
    @IBAction func about(_ sender: Any) {
        performSegue(withIdentifier: "se1", sender: nil)
       
    }
    
    
    @IBAction func sucsess(_ sender: Any) {
        performSegue(withIdentifier: "se2", sender: nil)
    }


    @IBAction func inProgress(_ sender: Any) {
        performSegue(withIdentifier: "se3", sender: nil)
    }
    
    
    @IBAction func ideas(_ sender: Any) {
    
     performSegue(withIdentifier: "se4", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func  unwindSegueToMainScreen(seque: UIStoryboardSegue){
        
    }
    
       let backgroundImageView = UIImageView()


       
       
       func setBackground() {
           view.addSubview(backgroundImageView)
           backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
           backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
           backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
           backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
           backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
           
           backgroundImageView.image = UIImage(named: "fon")
           view.sendSubviewToBack(backgroundImageView)
       }


}

