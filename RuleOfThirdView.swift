import SwiftUI

struct RuleOfThirdView: View {
    
    @State var isShown: Bool = false
    @State var isContentViewActive: Bool = false
    @State var composition = "RuleOfThird"
    
    var body: some View {
        ZStack {
            Image("ChalkBackground")
            HStack {
                ZStack {
                    Image("GreyCat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 750, height: 450, alignment: .center)
                    
                    Image("RuleOfThird")
                        .resizable() 
                        .scaledToFit()
                        .frame(width: 750, height: 450, alignment: .center)
                        .opacity(isShown ? 1 : 0)
                        .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: isShown)
                }
                VStack(alignment: .leading, spacing: 6) {
                    Text("Rule of Third")
                        .font(.custom("Chalkboard SE", size: 46))
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 25)
                        .foregroundColor(.black)
                    
                    Text("""
                    Placing the subject in the center?
                    Boring..
                    
                    Place your subject in the left or right
                    third of an image, leaving the other two
                    more open.
                    
                    Use the intersection to place
                    your focal point for much better result.
                    """)
                    .font(.custom("Chalkboard SE", size: 20))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                    
                    Spacer()
//                    NavigationLink(
//                        destination: ContentView(),
//                        label: {
                            Text("Try it out!")
//                        })
//                    .buttonStyle(.borderedProminent)
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

