import Foundation

let longDateFormatter: DateFormatter = {
    let df = DateFormatter()
    df.dateFormat = "dd.MM.YY"
    return df
}()
