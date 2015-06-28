//
//  Titan.swift
//  Titan
//
//  Created by Prateek Srivastava on 2015-06-28.
//  Copyright (c) 2015 f2prateek. All rights reserved.
//

import Foundation

public typealias Duration = Int64

public let Nanosecond: Duration  = 1
public let Microsecond           = 1000 * Nanosecond
public let Millisecond           = 1000 * Microsecond
public let Second                = 1000 * Millisecond
public let Minute                = 60   * Second
public let Hour                  = 60   * Minute

public class Titan {
  public static func nanoseconds(duration: Duration) -> Int64 {
    return duration
  }

  public static func seconds(duration: Duration) -> Float64 {
    let sec = duration / Second
    let nsec = duration % Second
    return Float64(sec) + Float64(nsec)*1e-9
  }
  
  public static func minutes(duration: Duration) -> Float64 {
    let min = duration / Minute
    let	nsec = duration % Minute
    return Float64(min) + Float64(nsec)*(1e-9/60)
  }

  public static func hours(duration: Duration) -> Float64 {
    let hour = duration / Hour
    let	nsec = duration % Hour
    return Float64(hour) + Float64(nsec)*(1e-9/60/60)
  }
}
