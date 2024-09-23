//
//  ViewController.swift
//  KananAhmadov-Lab2
//
//  Created by Ahmadov, Kanan on 9/17/24.
//

import UIKit

class ViewController: UIViewController {
   
    // UI Outlets
    @IBOutlet weak var petImageBackground: UIView!
    @IBOutlet weak var petImageView: UIImageView!
    @IBOutlet weak var happinessLabel: UILabel!
    @IBOutlet weak var timesPlayedLabel: UILabel!
    @IBOutlet weak var happinessDisplayView: DisplayView!
    @IBOutlet weak var foodLevelLabel: UILabel!
    @IBOutlet weak var timesFedLabel: UILabel!
    @IBOutlet weak var foodDisplayView: DisplayView!
    
    // pet Dictionary
    var pets: [String: Pet] = [:]
    var currentPet: Pet?

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // initializing pets
        pets["Cat"] = Pet(name: "Cat", image: "cat", happiness: 0, foodLevel: 0)
        pets["Dog"] = Pet(name: "Dog", image: "dog", happiness: 0, foodLevel: 0)
        pets["Bird"] = Pet(name: "Bird", image: "bird", happiness: 0, foodLevel: 0)
        pets["Bunny"] = Pet(name: "Bunny", image: "bunny", happiness: 0, foodLevel: 0)
        pets["Fish"] = Pet(name: "Fish", image: "fish", happiness: 0, foodLevel: 0)

        // setting default pet (Cat)
        selectPet(named: "Dog")
    }
   
    // updating UI with the selected pet's data
    func updateUI() {
        guard let pet = currentPet else { return }

        petImageView.image = UIImage(named: pet.image)
        happinessLabel.text = "Happiness:"
        foodLevelLabel.text = "Food Level:"
        timesPlayedLabel.text = "Played: \(pet.timesPlayed)"
        timesFedLabel.text = "Fed: \(pet.timesFed)"

        // updating display views with the progress (as a fraction of 10)
        happinessDisplayView.animateValue(to: CGFloat(pet.happiness) / CGFloat(10))
        foodDisplayView.animateValue(to: CGFloat(pet.foodLevel) / CGFloat(10))
    }
    
    func setColors(for petName: String) {
        switch petName {
        case "Cat":
            petImageBackground.backgroundColor = .blue
            happinessDisplayView.color = .blue
            foodDisplayView.color = .blue
        case "Dog":
            petImageBackground.backgroundColor = .red
            happinessDisplayView.color = .red
            foodDisplayView.color = .red
        case "Bird":
            petImageBackground.backgroundColor = .yellow
            happinessDisplayView.color = .yellow
            foodDisplayView.color = .yellow
        case "Bunny":
            petImageBackground.backgroundColor = .green
            happinessDisplayView.color = .green
            foodDisplayView.color = .green
        case "Fish":
            petImageBackground.backgroundColor = .purple
            happinessDisplayView.color = .purple
            foodDisplayView.color = .purple
        default:
            petImageBackground.backgroundColor = .gray
            happinessDisplayView.color = .gray
            foodDisplayView.color = .gray
        }
    }

    // handling pet selection
    func selectPet(named petName: String) {
        if let pet = pets[petName] {
            currentPet = pet
            setColors(for: petName)
            updateUI()
        }
    }

    // Actions for playing and feeding
    @IBAction func playButtonTapped(_ sender: UIButton) {
        guard let pet = currentPet else { return }
        if pet.play() {
            updateUI()
        }
    }

    @IBAction func feedButtonTapped(_ sender: UIButton) {
        guard let pet = currentPet else { return }
        if pet.feed() {
            updateUI()
        }
    }
   
    // Pet selection buttons
    
    @IBAction func selectDog(_ sender: UIButton) {
        selectPet(named: "Dog")
    }
    
    @IBAction func selectCat(_ sender: UIButton) {
        selectPet(named: "Cat")
    }
    
    @IBAction func selectBird(_ sender: UIButton) {
        selectPet(named: "Bird")
    }
    
    @IBAction func selectBunny(_ sender: UIButton) {
        selectPet(named: "Bunny")
    }
    
    @IBAction func selectFish(_ sender: UIButton) {
        selectPet(named: "Fish")
    }
    
}
