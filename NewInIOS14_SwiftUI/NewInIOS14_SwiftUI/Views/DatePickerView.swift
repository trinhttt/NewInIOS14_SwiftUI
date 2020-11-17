//
//  DatePickerView.swift
//  NewInIOS14_SwiftUI
//
//  Created by Trinh Thai on 11/17/20.
//

import SwiftUI

struct DatePickerView: View {
    var formater: DateFormatter {
        let formater = DateFormatter()
        formater.dateFormat = "dd/mm/yyyy"
        return formater
    }
    
    @State private var selectedDate = Date()
    var body: some View {
        VStack {
            DatePicker(selection: $selectedDate, in: ...Date()) {
                Text("Select a date")
            }
            .datePickerStyle(GraphicalDatePickerStyle())
            .frame(maxWidth: 400)
            Text("Date is \(selectedDate, formatter: formater)")
        }
        
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
