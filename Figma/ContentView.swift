import SwiftUI

struct ContentView: View {
    @State private var message:String = ""
    var body: some View {
        NavigationView {
            ZStack {
               
                Color.orange.ignoresSafeArea()

                VStack(spacing:150) {
                    
                    Image("cat")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)

                    
                    Button(action: { self.message = "soon"
                        
                        
                    }) {
                        Text("Feed Now")
                            .font(.title)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(40)
                            
                    }
                    Text(message)
                        .foregroundColor(.black)
                    
                }
            }
            .navigationTitle("Feed the Cat")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
