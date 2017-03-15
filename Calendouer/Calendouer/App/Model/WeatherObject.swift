//
//  WeatherObject.swift
//  Calendouer
//
//  Created by 段昊宇 on 2017/3/8.
//  Copyright © 2017年 Desgard_Duan. All rights reserved.
//

import UIKit

class WeatherObject: NSObject {
    var id: String = ""
    var name: String = ""
    var country: String = ""
    var path: String = ""
    var timezone: String = ""
    var timezone_offset: String = ""
    var date: String = ""
    var text_day: String = ""
    var code_day: String = ""
    var text_night: String = ""
    var code_night: String = ""
    var high: String = ""
    var low: String = ""
    var precip: String = ""
    var wind_direction: String = ""
    var wind_direction_degree: String = ""
    var wind_speed: String = ""
    var wind_scale: String = ""
    var last_update: String = ""
    
    init(Dictionary dic: [String: String]) {
        super.init()
        if let id = dic["id"] {
            self.id = id
        }
        if let name = dic["name"] {
            self.name = name
        }
        if let country = dic["country"] {
            self.country = country
        }
        if let path = dic["path"] {
            self.path = path
        }
        if let timezone = dic["timezone"] {
            self.timezone = timezone
        }
        if let timezone_offset = dic["timezone_offset"] {
            self.timezone_offset = timezone_offset
        }
        if let date = dic["date"] {
            self.date = date
        }
        if let text_day = dic["text_day"] {
            self.text_day = text_day
        }
        if let code_day = dic["code_day"] {
            self.code_day = code_day
        }
        if let code_night = dic["code_night"] {
            self.code_night = code_night
        }
        if let text_night = dic["text_night"] {
            self.text_night = text_night
        }
        if let high = dic["high"] {
            self.high = high
        }
        if let low = dic["low"] {
            self.low = low
        }
        if let precip = dic["precip"] {
            self.precip = precip
        }
        if let wind_direction = dic["wind_direction"] {
            self.wind_direction = wind_direction
        }
        if let wind_direction_degree = dic["wind_direction_degree"] {
            self.wind_direction_degree = wind_direction_degree
        }
        if let wind_speed = dic["wind_speed"] {
            self.wind_speed = wind_speed
        }
        if let wind_scale = dic["wind_scale"] {
            self.wind_scale = wind_scale
        }
        if let last_update = dic["last_update"] {
            if last_update.characters.count != 0 {
                self.last_update = (last_update as NSString).substring(to: 10)
           }
        }
    }
    
    public func getWeatherIcon() -> String {
        let time: DayObject = DayObject()
        var judgeCode = ""
        if time.hour >= 5 && time.hour <= 18 {
            judgeCode = code_day
        } else {
            judgeCode = code_night
        }
        switch judgeCode {
        case "0": return "sunny"// 晴天
        case "1": return "sunny"
        case "2": return "sunny"
        case "3": return "sunny"
        case "4": return "cloudy"
        case "5": return "partly_cloudy_day"
        case "6": return "partly_cloudy_day"
        case "7": return "mostly_cloudy_day"
        case "8": return "mostly_cloudy_day"
        case "9": return "mostly_cloudy_day"
        case "10": return "shower"
        case "11": return "thunder_shower"
        case "12": return "thunder_shower"
        case "13": return "light_rain"
        case "14": return "moderate_rain"
        case "15": return "heavy_rain"
        case "16": return "heavy_rain"
        case "17": return "heavy_rain"
        case "18": return "heavy_rain"
        case "19": return "ice_rain"
        case "20": return "heavy_rain"
        case "21": return "snow"
        case "22": return "snow"
        case "23": return "snow"
        case "24": return "snow"
        case "25": return "snow"
        case "26": return "mist"
        case "27": return "mist"
        case "28": return "mist"
        case "29": return "mist"
        case "30": return "mist"
        case "31": return "mist"
        case "32": return "wind"
        case "33": return "wind"
        case "34": return "wind"
        case "35": return "wind"
        case "36": return "wind"
        case "37": return "wind"
        case "38": return "sunny"
        
        default:
            return "sunny"
        }
    }
}
