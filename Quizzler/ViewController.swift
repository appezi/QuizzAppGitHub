
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
      var audioPlayer : AVAudioPlayer!
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    //var correctAnswer : Bool = false
    var questionNumber: Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       nextQuestion()
        //correctAnswer = firstQuestion.answer
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1
        {
            pickedAnswer = true
        }
        else
        {
            pickedAnswer = false
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
        progressLabel.text = "\(questionNumber+1)/13"
        scoreLabel.text = "Score: \(score)/13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber+1)
        
     
    }
    
    func nextQuestion() {
        if questionNumber < 13 {
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
            ProgressHUD.showSuccess("Correct!")
        }
        else
        {
            print("Incorrect")
            ProgressHUD.showError("Wrong!")
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
