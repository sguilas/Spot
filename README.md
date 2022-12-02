# Spot_Workout_Logger

This is the repository for my CS 184 Term Project called SPOT.

This application is my term project for my Mobile Device Programming class.

I decided to make this app because I've always struggled with keeping track of my workouts while I'm at the gym,
and I did't want to have to bring a notebook.

Switching between the notes app, and a timer app was also very frustrating, so I wanted to make something that will handle both.

The app uses Flutter/DART to amke the frontend portion. This was decided because it allowws the app to be compatible with iOS, Android, and Web. I will be 
using Firebase as backend. The database will be used to store custom workouts for the user. 

Right now there are no plans to release this to any app store.

THE PHOTOS USED HERE ARE NOT MINE AND ARE FOUND ONLINE. USED FOR EDUCATIONAL PURPOSES ONLY

////////////////HOW TO USE SPOT WORKOUT LOGGER/////////////////////////////////////////////

Run it on an emulator. Flutter should handle the rest.

Main Screen:
App drawer will give links to various options for the app. Including calculator, various prebuilt circuits and the custom workout builder.

Timer:
User have access to a timer in every workout. The timers are 30 secs, 1 minute, 3 minutes, and 5 minutes

Calculator:
In the drawer which user have access to in every workout. Use to add up weight used when using barbell.

Custom:
In the app drawer, select the custom option to create a workout or load a previously saved workout.
To build a workout, user chooses from a repdetermined list then hits save.
Choose the load custom workout to load the previously saved workout from the database. Custom workout tiles act similarly to prebuilt tiles. Each have the ability to lead to set checkers and timers, and provides visula updates when workout is completed.
