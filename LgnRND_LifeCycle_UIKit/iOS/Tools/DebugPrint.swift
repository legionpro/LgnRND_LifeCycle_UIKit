//
//  DebugPrint.swift
//  R&D_LifeCyle_swift
//
//  Created by Oleh Poremskyy on 01.04.2024.
//

import Foundation

class DebugPrint {
    static var printFlagA: Bool = false
    static var printFlagB: Bool = false
    
    static func debugPrint(file: String = #file, line: Int = #line, function: String = #function, flag: Bool = true) {
        if flag {
            print ("--- \(file):\(line) : \(function)")
        }
    }
}


enum Log {
    enum LogLevel {
        case info
        case warning
        case error
        
        fileprivate var prefix: String {
            switch self {
            case .info:    return "ℹ️"
            case .warning: return "⚠️"
            case .error:   return "❌"
            }
        }
    }
    
    struct Context {
        let file: String
        let function: String
        let line: Int
        var description: String {
            return "\((file as NSString).lastPathComponent): \(line) \(function)"
        }
    }
   
    static func info(_ str: String, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .info, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func warning(_ str: String, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .warning, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func error(_ str: String, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .error, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }

    fileprivate static func handleLog(level: LogLevel, str: String, shouldLogContext: Bool, context: Context) {
        let logComponents = ["[\(level.prefix)]", str]
        
        var fullString = logComponents.joined(separator: " ")
        if shouldLogContext {
            fullString += " ➜ \(context.description)"
        }
        
        #if DEBUG
        print(fullString)
        #endif
    }
}

