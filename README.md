<div align="center">
    <h1 id="Header">Virtual Pet App</h1>
</div>

The Virtual Pet App allows users to interact with a virtual pet by playing with it and feeding it. Users can choose from a variety of pets—Cat, Dog, Bird, Bunny, and Fish—and keep track of each pet’s happiness and food levels. The app features dynamic UI updates, progress bars for happiness and food levels, and a fun Pet Mood Tracker that enhances user engagement.

<p align="center" width="100%">
    <img width="25%" src="https://github.com/user-attachments/assets/c79c658b-5959-40bb-af9f-c008a212f85a">
    <img width="85%" src="https://github.com/user-attachments/assets/46c14226-996b-432a-9c9f-91cb79acf6f3">
</p>

## Technologies Used
* Swift: The app is developed in Swift, following the Model-View-Controller (MVC) architecture.
* UIKit: The user interface is built using UIKit components like UILabel, UIImageView, and UIView.
* Auto Layout: Constraints are used to ensure the UI adapts to different screen sizes and orientations.
* Animations: Mood label animations are handled using UIView.animate, adding dynamic and engaging interactions for the user.


## Key Features
* Pet Selection: Users can select from five different pets, each with its own unique background color and stats.
* Pet Interaction: Users can play with or feed their pet to increase its happiness and food levels. Pets' happiness increases when they are played with, and their food level decreases unless fed.
* Mood System: The app includes a Pet Mood Tracker that dynamically displays the pet’s mood as "Happy," "Neutral," or "Sad" based on its happiness and food levels. The mood updates in real-time as the user interacts with the pet.
* Mood Animation: The pet’s mood is displayed with an animated label, which pulses whenever the pet’s mood changes, providing instant visual feedback to the user.
* Reward System: If a pet remains in the "Happy" mood for 5 consecutive interactions, the user is rewarded with a bonus happiness point, displayed through a reward message.
* Progress Bars: The app includes animated progress bars for happiness and food levels, giving users a clear visual representation of their pet’s current state.


## App Functionality
* Playing with the Pet: The pet’s happiness increases when played with, but only if its food level is above 0. If the pet is happy, it receives a bonus happiness boost when played with.
* Feeding the Pet: The pet’s food level increases when fed, as long as the food level is below 10. Keeping the pet well-fed ensures it can continue playing and remain happy.
* Pet Mood Tracker: The pet’s mood changes dynamically based on its happiness and food levels. A happy pet remains happy as long as its happiness is above 7 and its food level is above 5. If the pet remains happy for 5 interactions, the user is rewarded.


## Live Action
If you would like to see the live action of the app, checkout the following video: screen-record.mov


## Installation
1) Clone this repository:
```
git clone https://github.com/your-username/virtual-pet-app.git
```
2) Open the project in Xcode.
3) Build and run the app on a simulator or physical device.
