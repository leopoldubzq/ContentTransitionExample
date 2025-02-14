# 📊 Smooth Numeric Animations in SwiftUI

## 🚀 Overview
SwiftUI in iOS 17 introduced a new way to animate numeric text seamlessly using the `.contentTransition(.numericText())` modifier. This makes numbers transition smoothly instead of abruptly changing.

## ✨ Features
- ✅ Native SwiftUI solution for numeric animations
- ✅ No need for `withAnimation` or custom `animatableData`
- ✅ Works perfectly for counters, progress indicators, and dynamic values

## 📸 Demo
<img src="https://github.com/user-attachments/assets/7e45fc1a-6df3-436e-b221-6e1a98983a18" width=30%>

## 📜 Usage
```swift
import SwiftUI

struct CounterView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .contentTransition(.numericText()) // Smooth transition ✨
                .animation(.easeInOut, value: count)
            
            Button("Increase") {
                count += 1
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
```

## 📦 Installation
No additional dependencies are required. Just ensure you're using **iOS 17+** and SwiftUI.

## 🎯 Requirements
- iOS 17+
- Xcode 15+

## 🛠️ Contributions
Feel free to open a PR or submit an issue if you have any suggestions or improvements!

---

📌 **Follow me on GitHub and Linkedin for more SwiftUI tips!** 🚀
