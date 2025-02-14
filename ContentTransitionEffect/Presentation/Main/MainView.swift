import SwiftUI

struct MainView: View {
    
    @State private var progressValue: CGFloat = 0.2
    
    var body: some View {
        VStack {
            Text(String(format: "%.0f", progressValue * 100))
                .font(.system(size: 72))
                .bold()
                .monospaced()
                .frame(width: 300, height: 300)
                .background {
                    ZStack {
                        Circle()
                            .fill(.background)
                            .shadow(
                                color: .blue.opacity(0.5 + (1.0 * progressValue)),
                                radius: 20 + (30 * progressValue)
                            )
                            .animation(
                                .smooth(duration: 2.0),
                                value: progressValue
                            )
                        CircularProgressView(progress: progressValue)
                    }
                }
                .contentTransition(.numericText())
                .animation(.default, value: progressValue)
            
            Slider(value: $progressValue, in: 0...1)
                .padding(.top, 64)
                .tint(Color.blue.gradient)
        }
        .padding()
    }
}

#Preview {
    MainView()
}


