import SwiftUI

struct SymmetryView: View {
    
    @State var isShown: Bool = false
    @State var isContentViewActive: Bool = false
    @State var composition = "Symmetry"
    
    var body: some View {
        ZStack {
            Image("ChalkBackground")
            HStack {
                ZStack {
                    Image("OrangeCat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 750, height: 450, alignment: .center)
                    
                    Image("Symmetry")
                        .resizable() 
                        .scaledToFit()
                        .frame(width: 750, height: 450, alignment: .center)
                        .opacity(isShown ? 1 : 0)
                        .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: isShown)
                }
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Symmetry")
                        .font(.custom("Chalkboard SE", size: 46))
                        .font(.largeTitle)
                        .padding(.bottom, 25)
                        .foregroundColor(.black)
                    
                    Text("""
                    When you want to convey formality,
                    Symmetry are often used.
                    
                    It creates pictures where one half
                    could be a mirror image of the other.
                    
                    Often, you will need to disregard
                    Rule of Third and perfectly center
                    the subject in the frame.
                    """)
                    .font(.custom("Chalkboard SE", size: 20))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                    
                Spacer()
//                NavigationLink(
//                    destination: ContentView(),
//                    label: {
                        Text("Try it out!")
//                    })
//                .buttonStyle(.borderedProminent)
                .padding()
                .foregroundColor(.white)
                .onTapGesture {
                    isContentViewActive = true
                }
                .background(Color(red: 0, green: 0, blue: 0.5))
                .clipShape(Capsule())
                }
                    .frame(
                        minWidth: 300,
                        maxHeight: 450,
                        alignment: .topLeading
                    )
                
                .onAppear(perform: {
                    isShown.toggle()
                })
            }
            .padding(.trailing, 50)
            .padding(.bottom, 50)
        }
        .navigationDestination(isPresented: $isContentViewActive) { 
            ContentView(compoLayer: $composition)
        }
    }
}
