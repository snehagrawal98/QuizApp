//
//  ViewController.swift
//  QuizApp
//
//  Created by mnameit on 09/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    var currentQuestion : Question?
    var quesPosn = 0
    var correct = 0

    
    
    @IBOutlet weak var answer0: UIButton!
    
    @IBOutlet weak var answer1: UIButton!
    
    
    @IBOutlet weak var answer2: UIButton!
    
    
    @IBOutlet weak var answer3: UIButton!
    
    
    
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var txtField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion = questions[0]
        setQuestion()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func opn1(_ sender: UIButton) {
        checkAnswer(idx: 0)
    }
    
    
    @IBAction func opn2(_ sender: UIButton) {
        checkAnswer(idx: 1)
    }
    
    
    @IBAction func opn3(_ sender: UIButton) {
        checkAnswer(idx: 2)
    }
    
    
    @IBAction func opn4(_ sender: UIButton) {
        checkAnswer(idx: 3)
    }
    
    func checkAnswer(idx:Int){
        
        if idx == currentQuestion!.correctAnswer{
          correct += 1
        }
        loadNextQuestion()
    }
    
    
    func loadNextQuestion() {
        if quesPosn + 1 < questions.count {
            quesPosn += 1
            currentQuestion = questions[quesPosn]
            setQuestion()
        } else {
            performSegue(withIdentifier: "ShowResults", sender: nil)
        }
    }
    
    func setQuestion(){
        txtField.text = currentQuestion!.question
        answer0.setTitle(currentQuestion!.answers[0], for: .normal)
        answer1.setTitle(currentQuestion!.answers[1], for: .normal)
        answer2.setTitle(currentQuestion!.answers[2], for: .normal)
        answer3.setTitle(currentQuestion!.answers[3], for: .normal)
        answer.text = "\(quesPosn + 1) / \(questions.count)"

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowResults" {
            var vc = segue.destination as! ResultViewController
            vc.correct = correct
            vc.total = questions.count
        }
    }
    
}

