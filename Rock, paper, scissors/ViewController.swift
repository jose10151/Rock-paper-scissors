//
//  ViewController.swift
//  Rock, paper, scissors
//
//  Created by 4d on 1/22/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Wincount.text = "Wins: \(count)"

        updateUI(state: .start)
    }

    @IBOutlet weak var Opphoice: UILabel!
    
    @IBOutlet weak var GameState: UILabel!
    
    @IBOutlet weak var rock: UIButton!
    
    @IBOutlet weak var paper: UIButton!
    
    @IBOutlet weak var scissors: UIButton!
    
    @IBOutlet weak var replaybutton: UIButton!
    
    @IBOutlet weak var Wincount: UILabel!
    
    
    var count:Int = 0
    
    
    @IBAction func Rock(_ sender: Any) {
        Play(sign: .rock)
    }
    
    @IBAction func Paper(_ sender: Any) {
        Play(sign: .paper)
    }
    
    @IBAction func Scissors(_ sender: Any) {
        Play(sign: .scissors)
    }
    
    @IBAction func Replay(_ sender: Any) {
        updateUI(state: .start)
        
    }
    
    
    func updateUI(state:Gamestate)
    {
        if(state == .start){
            Opphoice.text = "🤖"
            replaybutton.isHidden = true
            rock.isEnabled = true
            scissors.isEnabled = true
            paper.isEnabled = true
            
            GameState.text = "Rock, Paper, Scissors"
            rock.isHidden = false
            scissors.isHidden = false
            paper.isHidden = false
            
        }
        if(state == .win){
            GameState.text = "You win!"
            replaybutton.isHidden = false
            count += 1

        }
        if(state == .lose){
            GameState.text = "You lose!"
            replaybutton.isHidden = false
        }
        if(state == .draw){
            GameState.text = "Draw!"
            replaybutton.isHidden = false

        }
            
    }
    
    func Play(sign: Sign){
        let computer = randomSign()
        var state = sign.checkWin(opponent: computer)
        updateUI(state: state)
    }
    
}

