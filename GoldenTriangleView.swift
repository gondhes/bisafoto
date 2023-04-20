import SwiftUI

struct GoldenTriangleView: View {
    
    @State var isShown: Bool = false
    @State var isContentViewActive: Bool = false
    @State var composition = "GoldenTriangle"
    
    var body: some View {
        ZStack {
            Image("ChalkBackground")
            HStack {
                ZStack {
                    Image("SnowLeopard")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 750, height: 450, alignment: .center)
                    
                    Image(composition)
                        .resizable() 
                        .scaledToFit()
                        .frame(width: 750, height: 450, alignment: .center)
                        .opacity(isShown ? 1 : 0)
                        .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: isShown)
                }
                VStack(alignment: .leading, spacing: 6) {
                    Text("Golden Triangle")
                        .font(.custom("Chalkboard SE", size: 46))
                        .font(.largeTitle)
                        .padding(.bottom, 25)
                        .foregroundColor(.black)
                    
                    Text("""
                    It's somewhat like The Rule of Third.
                    but instead of straight lines,
                    we use diagonal lines.
                    
                    You can use it to capture scenery,
                    mountain, food, road, etc.
                    
                    The main subject of the photo should
                    sit on the triangles intersection.
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
//                    //                .buttonStyle(.borderedProminent)
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

