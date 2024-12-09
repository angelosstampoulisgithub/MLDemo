//
//  ContentView.swift
//  MLDemo
//
//  Created by Angelos Staboulis on 9/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var review:String
    @State var predict:MyTextClassifier_
    @State var prediction:MyTextClassifier_Output
    var body: some View {
        NavigationStack{
            VStack {
                Text("Write your review").frame(width:350,height:65,alignment: .leading)
                TextField("Write your review",text:$review).frame(width:350,height:65,alignment:.leading)
                Button {
                    do{
                        predict = try MyTextClassifier_(configuration: .init())
                        prediction = try predict.prediction(text: review)
                    }catch{
                        print("something went wrong!!!!")
                    }
                } label: {
                    Text("Prediction").frame(width:350,height:65,alignment:.center)
                }
                Text("Prediction").frame(width:350,height:65,alignment: .leading)
                Text(prediction.label).frame(width:350,height:15,alignment: .leading)
            }.navigationTitle("Machine Learing Demo")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView(review: "", predict:.init(model: .init()), prediction: .init(label: ""))
}
