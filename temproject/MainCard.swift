import SwiftUI

struct MainCard: View {

    var data :Festival
    var body: some View {
        
        VStack {
            // Add your views here
            
            Image(systemName: "photo")
               
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 190.28, height: 124.77)
                .clipped()
                .cornerRadius(14)
                .padding(1)
             
          
        
                // Add your views here
                VStack (alignment: .leading){
                    
                    
                    
                    Text("Mason Yokkkkkk")
                        .font(.custom("Poppins-Medium", size: 17))
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.062))
                        .frame(width: 138, height: 26)
                    
                       
                    HStack{

                        Image(systemName: "mappin").padding(1)
                        Text("7 km from you")
                            .font(.custom("Poppins-Medium", size: 10))
                            .foregroundColor(Color(red: 0.075, green: 0.059, blue: 0.149))
                        Spacer()
                        HStack {
                            Image(systemName: "chevron.right").foregroundColor(.gray)
                        }.padding(5)
                        
                        
                        
                        
                            }
                    Spacer()
                    
                }
                .frame(width: 190, height: 48.51)
               

        }   .frame(width: 202.28, height: 190.7)
            .background(Color(UIColor(red: 0.948, green: 0.948, blue: 0.948, alpha: 1))) // Using UIColor in SwiftUI
            
            .cornerRadius(20)
    }
}

struct MainCard_Previews: PreviewProvider {
    static var previews: some View {
        MainCard(data : festivals[0])
    }
}
