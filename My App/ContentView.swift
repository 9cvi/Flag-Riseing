import SwiftUI

struct ContentView: View {
    @State private var counter = 0.0
    @State private var message = "Enjoy your cookie"
    @State private var resetDisabled = true
    @State private var eatDisabled = false
    @State private var msgColor = Color.accentColor
    var body: some View {
        VStack {
            Text("\(Int(counter))")
                .font(.largeTitle)
            HStack(alignment:.bottom,spacing: -10){
                Rectangle()
                    .frame(width: 20)
                Text("🇦🇪")
                    .font(.system(size:100))
                    .offset(y: -10 * counter)
            }
            Button{
                print("Flag")
                counter += 1
            }
        label:
            {
                Text("Rise the flag")
            }
            .buttonStyle(.borderedProminent)
            Text("\(message)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(msgColor)
            
        }
    }
}
