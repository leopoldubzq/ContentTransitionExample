import SwiftUI

struct CircularProgressView: View {
    var progress: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .stroke(
                        Color.init(
                            uiColor: .tertiarySystemGroupedBackground
                        ),
                        lineWidth: 30
                    )
                Circle()
                    .trim(from: 0.0, to: progress)
                    .stroke(
                        Color.blue.gradient,
                        style: StrokeStyle(
                            lineWidth: 30,
                            lineCap: .round
                        )
                    )
                    .rotationEffect(.degrees(-90))
                    .animation(.easeInOut(duration: 0.6), value: progress)
            }
            .frame(
                width: geometry.size.width,
                height: geometry.size.height
            )
        }
    }
}
