import SwiftUI

struct GoldenRatioView: View {
    
    @State var isShown: Bool = false
    @State var isContentViewActive: Bool = false
    @State var composition = "GoldenRatio"
    
    var body: some View {
        ZStack {
            Image("ChalkBackground")
            HStack {
                ZStack {
                    Image("GoldenCat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 750, height: 450, alignment: .center)
                    
                    Image("GoldenRatio")
                        .resizable() 
                        .scaledToFit()
                        .frame(width: 750, height: 450, alignment: .center)
                        .opacity(isShown ? 1 : 0)
                        .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: isShown)
                }
                VStack(alignment: .leading, spacing: 6) {
                    Text("Golden Ratio")
                        .font(.custom("Chalkboard SE", size: 46))
                        .font(.largeTitle)
                        .padding(.bottom, 25)
                        .foregroundColor(.black)
                    
                    Text("""
                    It describes proportions that people
                    find especially pleasing.
                    
                    It's often found in nature and even in
                    human body. Great for art & architechture.
                    
                    Golden Ratio drawns viewer's eye to
                    the smallest curl of the spiral,
                    makes it quickly processed by the brain.
                    """)
                    .font(.custom("Chalkboard SE", size: 20))
//                    .multilineTextAlignment(.leading)
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
//                    .frame(width: 100, height: 40, alignment: .center)
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
