import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("HomeScreen")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
//                    Text("""
//                     Photography
//                     Composition
//                     """)
//                    .font(.custom("Arial Black", size: 60))
//                    .fontWeight(.heavy)
//                    .font(.largeTitle)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .padding(.leading, 60)
//                    .foregroundColor(.white)
//                    
//                    Text("Simplified")
//                        .font(.largeTitle)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.leading, 60)
//                        .padding(.bottom, 300)
//                        .foregroundColor(.white)
                    
                    HStack {
                        Image("Title")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 500, height: 500)
                            .padding(.leading, 60)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(.bottom, 90)
                    
                    HStack {
                        NavigationLink(
                            destination: IntroView(),
                            label: {
                                Text("Explore   ")
                                    .font(.title)
                            })
//                        .buttonStyle(.borderedProminent)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(red: 0, green: 0, blue: 0.5))
                        .clipShape(Capsule())
                        .padding(.leading, 95)
                        Spacer()
                    }
                    .padding(.bottom, 75)
                    
                    
                }
            }
        }
        .onAppear(perform: {
            AppDelegate.orientationLock = .landscapeLeft
        })
    }
}
