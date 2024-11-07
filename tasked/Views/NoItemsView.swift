import SwiftUI

struct NoItemsView: View {
    @State var animate: Bool = false

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items").font(.title).fontWeight(.semibold)
                Text("Feeling motivated? 🤔")
                    .padding(.bottom, 20)
                AnimatedButton(animate: $animate)

            }.multilineTextAlignment(.center)
                .padding(40)
                .onAppear(perform: addAnimation)

        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    private func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation(
                Animation.easeInOut(duration: 2.0).repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView {
        NoItemsView()
    }
}
