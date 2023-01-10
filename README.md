# Integrating Another App (Framework) into Existing App to Fetch API Data
This app is created using SwiftUI with MVVM Design Pattern and theMealDB API. There are 2 folders and 1 file in the repository:
- ```FoodDataKit```: This is a folder where the framework to fetch the food recipe API and views to display it are created, and this framework is called FoodDataKit.
- ```Tes_Project```: This folder is a new iOS app project I created.
- ```iOS_Tes_Project.xcworkspace```: This is a new Xcode workspace where I integrate the FoodDataKit framework into a new iOS project.

To run the app, open ```iOS_Tes_Project.xcworkspace```, and don't forget to change the build schemes to ```Tes_Project``` because that's the iOS app. If the build schemes selected is ```FoodDataKit```, you can't run the app because it is a framework, not an app.
