//
//  ContentView.swift
//  temproject
//
//  Created by seungunlee on 2023/05/08.
//

import SwiftUI

struct ContentView: View {
    
    var text = " 검색할  값"
    @State var searchKeyWord = ""
    @State var showingAlert = false
    
    struct Festival : Identifiable{
        var id = UUID()
        let name: String
        let date: String
        let location: String
        let explanation: String
    }

    var festivals = [
        Festival(name: "Cherry Blossom Festival", date: "April 1-10", location: "Seoul", explanation: "Celebrate spring with the beauty of cherry blossoms."),
        Festival(name: "Lantern Festival", date: "May 15-20", location: "Busan", explanation: "Experience the colorful lantern parade and cultural performances."),
        Festival(name: "Fireworks Festival", date: "July 1-5", location: "Incheon", explanation: "Enjoy the spectacular fireworks show and beach parties."),
        Festival(name: "Rock Festival", date: "July 20-25", location: "Incheon", explanation: "Enjoy the spectacular fireworks show and beach parties.")
    ]
    
    var body: some View {
        
        
        
        VStack{
            NavigationView {
                VStack {
                    //검색 창 시작
                    HStack {
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 354, height: 55)
                                .foregroundColor(Color(red: 0.192, green: 0.183, blue: 0.183))
                                .cornerRadius(14)
                            
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .padding()
                                    .foregroundColor(.white)

                                TextField("Search keyword", text: $searchKeyWord)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                
                                Button(action: {
                                    // 검색어를 저장하는 로직을 추가
                                    self.searchKeyWord = self.searchKeyWord.trimmingCharacters(in: .whitespacesAndNewlines)
                                    self.showingAlert = true
                                    
                                }) {
                                    Text("검색")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.blue)
                                        .cornerRadius(15)
                                }
                                .padding()
                                .alert(isPresented: $showingAlert) {
                                           Alert(
                                               title: Text("검색어 확인"),
                                               message: Text("당신이 검색한 키워드는 '\(searchKeyWord)'입니다."),
                                               dismissButton: .default(Text("확인"))
                                           )
                                       }
                                Spacer()
                                
                                
                            }
                        }
                        Spacer()
                    }
                    .padding(.top, 64)
                    .padding(.leading, 18)
                    //검색창 끝
 
             // 메인 기사 for문 시작
                    List {
                                   ForEach(festivals) { festival in
                                       ExtractedView(data: festival)
                                           .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 5, trailing: 10))

                                   }
                               }
                               .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                               .cornerRadius(10)
                               .listStyle(PlainListStyle())
                    //메인 기사 for문 끝
                    
                    Spacer()
                    // 맨 아래 네비게이션 바 시작
                    HStack {
                        NavigationLink(destination: ThirdView()) {
                            Text("ThirdView")
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        NavigationLink(destination: ThirdView()) {
                            Text("ThirdView")
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        NavigationLink(destination:ThirdView()) {
                            Text("ThirdView")
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        NavigationLink(destination: ThirdView()) {
                            Text("ThirdView")
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        
                    }.frame(width: 390, height: 92)
                        .background(Color.gray)
                    
                }
                .padding()
                // 맨 아래 네비게이션 바 끝
            }
            
            
            
            
            
            
        }
        
        
        
        
    }
    
    //상세 페이지
    struct SecondView: View {
        var Data : Festival
        var body: some View {
            VStack {
                Text(Data.name)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .shadow(color: Color(red: 0.01, green: 0.125, blue: 0.174, opacity: 0.05), radius: 40, x: 0, y: 20)
                    .frame(height: 334)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(style: StrokeStyle(lineWidth: 1, lineCap: .round, lineJoin: .round, dash: [10], dashPhase: 0))
                            .foregroundColor(.clear)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
//                                Color(red: 0.01, green: 0.125, blue: 0.174, opacity: 0.05)
                                    .fill(Color.white)
                                    .shadow(color: Color(red: 0.01, green: 0.125, blue: 0.174, opacity: 0.05), radius: 40, x: 0, y: 20)
                                    .overlay(
                                        // Image
                                        Image(systemName: "photo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width:  300, height: 300)
                                            .foregroundColor(.gray)
                                    )
                            )
                    )
                
                
                
                HStack{
                    Text("Exhibition : "+Data.date)
                    
                }
                VStack{
                    Text(Data.explanation)
                    Text("Location : "+Data.location)
                }
                Spacer()
                
                
            }
            .padding()
            .navigationTitle("Second View") // 네비게이션 바의 타이틀 설정
        }
    }
    struct ThirdView: View {
        var body: some View {
            VStack {
                Text("This is the Third View!")
            }
            .padding()
            .navigationTitle("Third View") // 네비게이션 바의 타이틀 설정
        }
    }
    // 메인 메뉴 Foreach문으로 출력되는 View페이지
    struct ExtractedView: View {
        
    
        var data : Festival
        var body: some View {
            HStack {
            
                Image(systemName: "photo")
                               .resizable()
                               .scaledToFit()
                               .frame(width: 100, height: 100)
                               .padding()
                VStack(alignment: .leading, spacing: 4) {
                    Text(data.name)
                        .font(.system(size: 15, weight: .bold))
                    Text(data.date)
                        .font(.system(size: 12))
                        
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                // NavigationLink를 사용하여 다른 View로 이동할 수 있는 버튼 생성
                NavigationLink(destination: SecondView(Data:data )) {
                    Text("go")
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .frame(width: 350, height: 152)
            .background(Color.gray)
            .cornerRadius(20)
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


