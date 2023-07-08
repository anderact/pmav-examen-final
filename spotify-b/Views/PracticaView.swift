import SwiftUI

struct PracticaView: View {
    var body: some View {
        ZStack {
            Color("Dark")
                .ignoresSafeArea()
            HStack(){
                
                ImageIconView(icon: "arrow.left")
                Spacer()
            }.foregroundColor(.white)
            ScrollView {
                VStack(alignment: .leading, spacing: 40) {
                    HStack{
                        ImageIconView(icon: "arrow.left")
                        Spacer()
                        
                    }
                    VStack(spacing:30){
                        SearchBar()
                    }
                    
                    VStack(alignment: .leading, spacing: 20){
                        TextView(text: "Podcast charts",size: 32)
                        TextView(text: "10 episodes",size: 10)
                        HStack(){
                            ImageIconView(icon: "gearshape").padding()
                            Spacer()
                            ImageIconView(icon: "play.circle.fill",size: 60)
                        }
                    }
                    
                }
                HStack(spacing: 15){
                    Button {
                    } label: {
                        Text("Download")
                            .padding()
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color("Grey"), lineWidth: 4)
                            )
                    }
                    .background(Color("Dark"))
                    .cornerRadius(30)
                    Button {
                    } label: {
                        Text("Unplayed")
                            .padding()
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color("Grey"), lineWidth: 4)
                            )
                    }
                    .background(Color("Dark"))
                    .cornerRadius(30)
                    Button {
                    } label: {
                        Text("Continue listening")
                            .padding()
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color("Grey"), lineWidth: 4)
                            )
                    }
                    .background(Color("Dark"))
                    .cornerRadius(30)
                }
                HStack{
                    VStack{
                        
                    }
                }
                
                
            }
            
            
        }
        
    }
    
    
    
    struct PracticaView_Previews: PreviewProvider {
        static var previews: some View {
            PracticaView()
        }
    }
}
