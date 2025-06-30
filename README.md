# TipLit

**TipLit** is a simple SwiftUI-based iOS app that helps users quickly calculate how much to tip and how to split a bill between multiple people.

## Features

- Input a check amount using currency formatting
- Choose the number of people to split the bill with
- Select a tip percentage from common U.S. tipping rates (10%, 15%, 18%, 20%, 25%) or No tip
- View the total amount each person needs to pay
- Simple and clean UI built with SwiftUI
- Dynamic keyboard handling with focus management

## Screenshots
<img src="https://github.com/user-attachments/assets/153da3e0-2d6b-4dcf-9378-eda0c80e4ddf" alt="p1-tiplit" width="300" />
<img src="https://github.com/user-attachments/assets/50036bfd-db7f-4e53-bb7b-d686939e403d" alt="p5-tiplit" width="300" />
<img src="https://github.com/user-attachments/assets/cb1a58ad-2888-4139-9803-75c095da60fe" alt="p3-tiplit" width="300" />





## Technologies

- Swift
- SwiftUI
- State management using `@State` and `@FocusState`
- Navigation using `NavigationStack`
- Forms and Pickers for user input
- Swift Testing (optional unit tests with Apple’s modern framework)

## Tip Calculation Logic

The per-person total is calculated with the following formula:
- Total per person = (checkAmount + tipAmount) / numberOfPeople
- tipAmount = checkAmount * (tipPercentage / 100)

## How to Run

1. Clone this repository:
git clone https://github.com/WinterSolid/TipLit.git


2. Open `TipLit.xcodeproj` or `TipLit.xcworkspace` in Xcode 16+.

3. Build and run the app in the simulator or on a real device.

## Testing

If using Apple’s Swift Testing framework:

- Run tests with `Cmd + U` to verify tip calculation logic.
- Unit tests are located in the `TipLitTests` target.

## License

This project is open source and available under the MIT License.

   


