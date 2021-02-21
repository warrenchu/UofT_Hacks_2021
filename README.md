# UofT_Hacks_2021
## Spend2Save
An interactive prototype of a mobile app that gamifies the money saving experience. 

## Problem Statement:
- Encouraging students to save money for an emergency fund
- Emergency funds are often necessary. But we need to give students incentive to save for it. 
- The ongoing pandemic exacerbates the lack of willpower to save. 
- Money spent on in-game cosmetics increased by 26% in 2020; this money can be directed elsewhere.


## Summary:

Our product aims to direct the impulse to spend money on in-game rewards towards saving money through virtual avatars. This is accomplished through gamifying the emergency fund saving experience to incentivize users to set aside amounts of money each paycheck to add to their emergency savings accounts. This app creates a visual manifestation for the amount saved for emergency use and allows users to “unlock” certain rewards for their in-game avatars through the transfer of funds to their emergency fund. 

The app can be broken down into 3 main components. 
1. The creation and customization of a user’s avatar
2. The transferring of funds into a user’s “spending wallet” to unlock avatar skins, accessories, pets, etc. 
3. The storefront which allows users to browse through and “pay” for these rewards by transferring money from their “spending wallet” to their total savings fund. 

## Target Audience: 
- Primary/Secondary(targeted end users/input and output system): 
  -Students and freelancers who use RBC as their main bank.
- Tertiary(others directly receiving benefits from system success or failure):
  - RBC (it could encourage users of the app to open accounts)
- Facilitating(design, development, maintenance): 
  - RBC(would have to implement the system, the back-end servers and keep it updated)

Society has seen huge trends in virtual avatars such as Sims. These games are widely successful and they attract a demographic that have grown up playing them. We firmly believe that pairing this demographic with the age range that spends the most on in-app purchases creates a unique opportunity for our product to truly incentivize users to invest in an emergency fund through this game. 

## Why is it important to the primary audience?
- Students and freelancers typically don’t have the same financial security as full time salary based employees. An emergency at the wrong time, during a time of low income, can cause plenty of financial aches especially if they haven’t set up an emergency fund. 
- Having savings is important in case of emergency. 
- People may have other savings goals such as a vacation or new car or even a down payment for a home. This can be another motivation. 

## Projected Functionality
- Incentivizes users to use money from paychecks to upgrade in-game avatars, in turn putting money in a secure account to be used for emergency funds. Upgrades can include clothing items, residences, pets, clothes for pets.
- Notifications encouraging users to put in money can be set to match biweekly paydays or in a more infrequent manner to account for a freelancer’s unconventional pay cycle. - Reminds users to input savings every few days in order to keep their avatar happy. 
- Give users the option to have a base amount in their emergency fund. If they withdraw and their funds are below the base amount, their avatar loses progress to some capacity.

### UI Mockup for Future Implementation (Use Arrow Keys to Navigate)
https://preview.uxpin.com/6a66ede10a0f9aa7c03071ebdfea7028312b1569#/pages/136920562?mode=c

## Resources
This app was created using Flutter (https://flutter.dev/) and the pixel avatar characters are adapted from OpenGameArt- an open source art-forum (https://opengameart.org/content/24x32-bases-0) using the online tool PixilArt (https://pixilart.com).  

## Requirements to Run
- Flutter SDK
- Android SDK
- Android Emulator or Android to run locally.

## Instructions
1. Open UofT_Hacks_2021 folder in terminal window.
2. Run `flutter pub get` to get required dependencies.
3. Connect Android emulator or local Android device using an editor or Android Studio.
4. Traverse to the lib folder.
5. Run `flutter run main.dart`.
