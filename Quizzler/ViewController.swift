
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
      var audioPlayer : AVAudioPlayer!
    
    //Change This Variable Based on Quiz
    let allQuestions = QuestionBank()
    var pickedAnswer : Int = 0
    //var correctAnswer : Bool = false
    var questionNumber: Int = 0
    var score : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var option1Button: UIButton!
    
    @IBOutlet weak var option2Button: UIButton!
    
    @IBOutlet weak var option3Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       nextQuestion()
        //correctAnswer = firstQuestion.answer
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1
        {
            pickedAnswer = 1
        }
        else if sender.tag == 2
        {
            pickedAnswer = 2
        }
        else
        {
         pickedAnswer = 3
        }
        
      /*  if pickedAnswer == correctAnswer {
            print("Correct")
        }
        
        else{
            print("Wrong")
        }
        */
        
            playSound()
            checkAnswer()
        
            questionNumber += 1
        
            nextQuestion()
  
    }
    
    func updateUI() {
        let numberOfQuestions : CGFloat = CGFloat(allQuestions.numberOfQuestions)
        progressLabel.text = "\(questionNumber+1)/\(allQuestions.numberOfQuestions)"
        scoreLabel.text = "Score: \(score)/\(allQuestions.numberOfQuestions)"
        progressBar.frame.size.width = (view.frame.size.width / numberOfQuestions) * CGFloat(questionNumber+1)
        
     
    }
    
    func nextQuestion() {
        
        
        if questionNumber < allQuestions.numberOfQuestions {
            option1Button.setTitle(allQuestions.list[questionNumber].optionA, for: .normal)
            option2Button.setTitle(allQuestions.list[questionNumber].optionB, for: .normal)
            option3Button.setTitle(allQuestions.list[questionNumber].optionC, for: .normal)
            
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
        }
            
        else
        {
            let alert = UIAlertController(title: "Game Over", message: "Do you want to restart?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil )
      
        }
        
        
        
        }
       
    
    
    func checkAnswer() {
        
         let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer
        {
            score += 1
            ProgressHUD.showSuccess("Good Job!")
        }
        else
        {
            print("Incorrect")
            ProgressHUD.showError("Incorrect")
        }
        
        
        
    }
    
    func startOver() {
        
        questionNumber = 0
        nextQuestion()
        score = 0
        updateUI()
       
    }
    
    func playSound()
    {
        let soundURL = Bundle.main.url(forResource: "note1 copy", withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch
        {
            print(error)
        }
        
        audioPlayer.play()
    }
}
